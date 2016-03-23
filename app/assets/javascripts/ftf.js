

falconModule = (function(){

  var initMap = function() {
    // Create a map object and specify the DOM element for display.
    var map = new google.maps.Map(document.getElementById('new-map'), {
      center: {lat: 37.774929, lng: -122.419416 },
      scrollwheel: false,
      zoom: 8
    });
  }
  
  return {
    initMap: initMap
  };


})();

$(document).ready(function(){
  if($('#ftfs').length){

    console.log('im here');
    falconModule.initMap();
  } 
});
 