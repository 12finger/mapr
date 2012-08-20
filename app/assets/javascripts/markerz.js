     
  var displayAll = true;

  function findMarkersByCatAndToggleThem ( markersArray, catNum, toggleVisi ) {
    if ( displayAll ) {
      Gmaps.map.hideMarkers();
      displayAll = false;        
    } 
    var matches = [];
    var markerLength = markersArray.length;
    for ( var i = 0; i < markerLength; i++ ) {
          if ( $.inArray( catNum , markersArray[i].cat.split(",")) !== -1 ) {
              if ( !(toggleVisi) ) {
                Gmaps.map.markers[i].vcounter ++;
              } else {
                Gmaps.map.markers[i].vcounter --;
              }
              if ( (Gmaps.map.markers[i].serviceObject.getVisible() && Gmaps.map.markers[i].vcounter == 0 ) ) {
                Gmaps.map.hideMarker(Gmaps.map.markers[i]);
                console.log( "setVisible" );
              } else {
                Gmaps.map.showMarker(Gmaps.map.markers[i]);
                console.log( "inv" ); }                  
          }
    }
  };

  function resetvcounter(arg) {
    var markerLength = Gmaps.map.markers.length;
    for ( var i = 0; i < markerLength; i++ ) {
      Gmaps.map.markers[i].vcounter = 0;
    }
  }

  function refreshSidebar(arg) { 
    for (var i = 0; i <  Gmaps.map.markers.length; ++i) {
      if (Gmaps.map.markers[i].serviceObject.getVisible() == true ) {
        Gmaps.map.createSidebar(Gmaps.map.markers[i]);
      } 
    };
  };

  function closeBubble(arg) { 
    for (var i = 0; i <  Gmaps.map.markers.length; ++i) {
      Gmaps.map.markers[i].infowindow.close();
    };
  };

  function showAll(arg) {
    $("#categories li.active").removeClass("active");
    $("#categories li a.all").fadeOut();    
    resetvcounter();
    closeBubble();
    Gmaps.map.showMarkers(); 
    Gmaps.map.resetSidebarContent();
    refreshSidebar();
    Gmaps.map.adjustMapToBounds();
    displayAll = true;
  }

  function fitMapToVisibleMarkers(arg) {
    var newbounds = new google.maps.LatLngBounds();
    for (var i = 0; i < Gmaps.map.markers.length; i++) {
        if (Gmaps.map.markers[i].serviceObject.getVisible())
        newbounds.extend(Gmaps.map.markers[i].serviceObject.position);
    }
    Gmaps.map.map.fitBounds(newbounds);
  }

$("#categories li").click(function() {
    var decrementV = false;
    // clicked on all-button?
    if($("a", this).is(".all")) {
      $("#categories li.active").removeClass("active");
      $("#categories li a.all").fadeOut();
    }
    else {
      $("#categories li .all").fadeIn();      

      // if category is already marked as active, set decrementV to TRUE,
      // so the  Markers vcounter gets decremented
      if($(this).is(".active")) {
        $(this).removeClass("active");
        decrementV = true;
      }
      // mark category as active
      else {
        $(this).addClass("active");
      }      
      
      if( ($("#categories li").length == $("#categories li.active").length + 1) || $("#categories li.active").length == 0 ) {
        showAll();
      }
    }
    // Basic routine to display markers for each category
    closeBubble();
    clearHash();
    Gmaps.map.resetSidebarContent();
    findMarkersByCatAndToggleThem( Gmaps.map.markers, $(this).attr("rel"), decrementV );
    fitMapToVisibleMarkers();
    refreshSidebar();

    return false;
  });

$("#categories li a.all").click(function() { 
  showAll();
  return false;
});

$("#markers_list a").click(function() { 
  return false;
});


// = = = = = = = = = = = = =
// Location Hashes
// = = = = = = = = = = = = =

 var BASEURL = '';
 var pasthash = '';

 function clearHash () { 
    history.pushState("", document.title, window.location.pathname + window.location.search);
}


function setLocationHash(url) {
  pasthash = "#"+url;
  window.location.hash = url;
}

function handleLocationHash() {
  hash = window.location.hash;
  $("#markers_list a[rel="+hash+"]").click();
  return false;
}

// go to the right buuble when frshly loaded with hash
window.setInterval(function() {
  if(pasthash == '' && window.location.hash != '') {
      pasthash = window.location.hash;   
      setTimeout(function() {
        handleLocationHash();
      },2250);
      // this time is needed to wait till the map gets loaded so the marker is properly panned
  }
}, 150);



