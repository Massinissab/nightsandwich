function MapHandler (){
     var map; //Variable holding the map
     this.geoMarker;
     var blancMesnilLatLng = new google.maps.LatLng(48.946406,2.465744);
     
     this.drawMap  = function(){
        google.maps.event.addDomListener(window, 'load', initialize);
     };
     
     this.initialize = function () {
        var mapOptions = {
          center: blancMesnilLatLng,
          zoom: 11,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          streetViewControl : false
        };
        map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
        drawDeliveryZone();
        
        this.geoMarker = new GeolocationMarker();
        this.geoMarker.setCircleOptions({fillColor: '#808080'});
       
        google.maps.event.addListener(this.geoMarker, 'position_changed', function() {
            console.log("event fired");
            map.setCenter(this.getPosition());
          //Uncomment that to zoom the map around the client position
         // map.fitBounds(this.getBounds());
        });

        google.maps.event.addListener(this.geoMarker, 'geolocation_error', function(e) {
          alert('There was an error obtaining your position. Message: ' + e.message);
        });
        this.geoMarker.setMap(map);
        //Insert current position marker
        /*if (navigator.geolocation){
            navigator.geolocation.getCurrentPosition(positionOnMap,handleError);
        }*/
      }
     /**
     * Position a marker on map
     * @param {position} position :  position returned by the navigator
     */
    function positionOnMap(position) {
        var pos = new google.maps.LatLng(position.coords.latitude,
                                       position.coords.longitude);

        var marker = new google.maps.Marker({
          map: map,
          position: pos,
          animation: google.maps.Animation.DROP,
          title : "Votre position"
        });
         
        map.setCenter(pos);
    }
    
    function handleError(error){
        switch(error.code){
            case error.PERMISSION_DENIED:
              console.log("User denied the request for Geolocation.");
              break;
            case error.POSITION_UNAVAILABLE:
              console.log("Location information is unavailable.");
              break;
            case error.TIMEOUT:
              console.log("The request to get user location timed out.");
              break;
            case error.UNKNOWN_ERROR:
              console.log("An unknown error occurred.");
              break;
        }
    }
    
    
    function drawDeliveryZone(){
        var pantinLatLng = new google.maps.LatLng(48.894765,2.409739);
       // var blancMesnilLatLng = new google.maps.LatLng(48.946406,2.465744);
        var tremblayLatLng = new google.maps.LatLng(48.980344,2.55724);
        var noisyLeGrandLatLng = new google.maps.LatLng(48.848874,2.552648);
        //var bobignyLatLng = new google.maps.LatLng(48.9088,2.439727);
        
        var zonePositions = [
                pantinLatLng,
                blancMesnilLatLng,
                tremblayLatLng,
                noisyLeGrandLatLng
                //bobignyLatLng
            ];

        deliveryZone = new google.maps.Polygon({
          paths: zonePositions,
          strokeColor: 'lightgreen',
          strokeOpacity: 0.8,
          strokeWeight: 3,
          fillColor: 'green',
          fillOpacity: 0.35,
          map: map,
          title: "Test"
        });
        
    }
};

var mapHandler = new MapHandler();
mapHandler.drawMap();
