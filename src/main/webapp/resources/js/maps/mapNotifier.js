function updateDeliveryManPosition(){
    $.ajax({    type: "GET",
                url: "position",
                success: function(data){putMarkerOnMap(data);}
              });
}

function putMarkerOnMap(data){
        var pos = new google.maps.LatLng(data.latitude,
                                         data.longitude);
        
        var marker = new google.maps.Marker({
          map: mapHandler.map,
          position: pos,
          animation: google.maps.Animation.DROP,
          title : "Votre position"
        });
}

window.setInterval(updateDeliveryManPosition,1000);
