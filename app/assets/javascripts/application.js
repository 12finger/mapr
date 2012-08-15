// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
// 
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .


function maprStylez(arg) {
  var styles =  [
                  {
                    featureType: 'all',
                    elementType: 'all',
                    stylers: [
                      { saturation: -20 },
                      { lightness: -10 },
                      { gamma: 0.8 }
                    ]
                  },
                  { 
                    featureType: "water",
                    elementType: 'all',
                    stylers: [
                      { lightness: 1 },
                      { color: "#87a7c5" }
                      //{lightness:80}
                    ]
                  }
                ];
  return styles
}

// // more styles


//  //  // actual sytle
//   var styles =  [
//                   {
//                     featureType: 'all',
//                     elementType: 'all',
//                     stylers: [
//                       { saturation: -20 },
//                       { lightness: -10 },
//                       { gamma: 0.8 }
//                     ]
//                   },
//                   { 
//                     featureType: "water",
//                     elementType: 'all',
//                     stylers: [
//                       { lightness: 1 },
//                       { color: "#87a7c5" }
//                       //{lightness:80}
//                     ]
//                   }
//                 ];
//   return styles
// }

//  //  // this one is quite classic
// var styles =  [
//                 {
//                   featureType: "water",
//                   stylers: [
//                     { lightness: 1 },
//                     { color: "#87a7c5" }
//                   ]
//                 },{
//                   featureType: "landscape.natural",
//                   stylers: [
//                     { lightness: 51 }
//                   ]
//                 },{
//                   featureType: "road",
//                   elementType: "geometry",
//                 }
//               ];


//  //   // this one is like "Iceage"
// var styles =  [
//                 {
//                   stylers: [
//                     { hue: '#00ffe6' },
//                     { saturation: -20 }
//                   ]
//                 },{
//                   featureType: 'road',
//                   elementType: 'geometry',
//                   stylers: [
//                     { lightness: 100 },
//                     { visibility: 'simplified' }
//                   ]
//                 },{
//                   featureType: 'road',
//                   elementType: 'labels',
//                   stylers: [
//                     { visibility: 'on' }
//                   ]
//                 },
//                 { 
//                   featureType: "water",
//                   elementType: 'all',
//                   stylers:[
//                     { color: "#646ca7" },
//                     {saturation: "-80"},
//                     //{lightness:80}
//                   ]
//                 }                  
//               ];



//  // // deprecated functions: 

function makeMaprStyle(arg) {
    // old style:
    var style = [
          {
            featureType: 'all',
            elementType: 'all',
            stylers: [{ saturation: -20 },{ lightness: -20 },{ gamma: 0.8 }]
          },
          { 
            featureType: "water",
            elementType: 'all',
            stylers:[
              { color: "#646ca7" },
              {saturation: "-80"},
              //{lightness:80}
            ]
          }
    ];

    var styledMapType = new google.maps.StyledMapType(style, {map: map, name: 'Styled Map'  });
    Gmaps.map.serviceObject.mapTypes.set('maprStyle', styledMapType)
    Gmaps.map.serviceObject.setMapTypeId('maprStyle')
    //Gmaps.map.serviceObject.setMapTypeId(google.maps.MapTypeId.HYBRID);


};