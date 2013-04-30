var savedPos = new google.maps.LatLng(0,0);
var marker;

function updateDeliveryManPosition(){
    $.ajax({    type: "GET",
                url: "position",
                success: function(data){putMarkerOnMap(data);}
              });
}

function putMarkerOnMap(data){
        var pos = new google.maps.LatLng(data.latitude,
                                         data.longitude);
        
        if(savedPos.lat() != pos.lat() || savedPos.lng() != pos.lng()){
            //If marker is already on the map remove it before update it position
            if(marker === undefined){
                marker = new google.maps.Marker({
                    map: mapHandler.map,
                    position: pos,
                    animation: google.maps.Animation.DROP,
                    title : "Votre position"
                });
            }else{
                console.log("modify position");
                marker.setPosition(pos);
            }
        }
        
        
        
        savedPos = pos;
}
//Call it first time 
updateDeliveryManPosition();
//Set interval to automatically update position
window.setInterval(updateDeliveryManPosition,30000);
