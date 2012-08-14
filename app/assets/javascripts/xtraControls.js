// here we do some prerequisites for the building of the the Xtra Controls
// we need to put add them to the map, so the infowindows get some clearance off the margins (especially off the sidebar) 

  function HomeControl(controlDiv) {
    // Set CSS styles for the DIV containing the control
    // Setting padding to 5 px will offset the control
    // from the edge of the map
    controlDiv.style.padding = '0px';
    controlDiv.style.width = '150px';
    controlDiv.style.height = '60px';
    controlDiv.style.zIndex = '-1';
    // Set CSS for the control border
    var controlUI = document.createElement('div');
    //controlUI.style.backgroundColor = 'red';
    //controlUI.style.borderStyle = 'solid';
    //controlUI.style.borderWidth = '2px';
    controlUI.style.cursor = 'pointer';
    controlUI.style.textAlign = 'center';
    controlUI.title = 'Click to set the map to Home';
    controlDiv.appendChild(controlUI);
    // Set CSS for the control interior
    var controlText = document.createElement('div');
    controlText.style.fontFamily = 'Arial,sans-serif';
    controlText.style.fontSize = '12px';
    controlText.style.paddingLeft = '4px';
    controlText.style.paddingRight = '4px';
    controlText.innerHTML = '   &nbsp;  ';
    controlUI.appendChild(controlText);
  }
  function HomeControl2(controlDiv) {
    controlDiv.style.padding = '50px';
    controlDiv.style.paddingLeft = '0px';
    controlDiv.style.marginLeft = '25px';
    controlDiv.style.width = '170px';
    controlDiv.style.height = '50px';
    controlDiv.style.zIndex = '-1';
    var controlUI = document.createElement('div');
    //controlUI.style.backgroundColor = 'black';
    //controlUI.style.borderStyle = 'solid';
    //controlUI.style.borderWidth = '2px';
    controlUI.style.cursor = 'pointer';
    controlUI.style.textAlign = 'center';
    controlUI.title = 'Click to set the map to Home';
    controlDiv.appendChild(controlUI);
    // Set CSS for the control interior
    var controlText = document.createElement('div');
    controlText.style.fontFamily = 'Arial,sans-serif';
    controlText.style.fontSize = '12px';
    controlText.style.paddingLeft = '4px';
    controlText.style.paddingRight = '4px';
    controlText.innerHTML = '    &nbsp;          ';
    controlUI.appendChild(controlText);
  }
  function initializeXtraContrl() {
    // Create the DIV to hold the control and
    // call the HomeControl() constructor passing
    // in this DIV.
    var homeControlDiv = document.createElement('div');
    var homeControl = new HomeControl(homeControlDiv);
    var homeControlDiv2 = document.createElement('div');
    var homeControl2 = new HomeControl(homeControlDiv2);
    var homeControlDiv3 = document.createElement('div');
    var homeControl3 = new HomeControl2(homeControlDiv3);
    homeControlDiv.index = 1;
    Gmaps.map.map.controls[google.maps.ControlPosition.TOP_RIGHT].push(homeControlDiv);
    Gmaps.map.map.controls[google.maps.ControlPosition.TOP_CENTER].push(homeControlDiv2);
    Gmaps.map.map.controls[google.maps.ControlPosition.RIGHT_CENTER].push(homeControlDiv3);
  }
