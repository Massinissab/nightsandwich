function MapObserver (){
    
    this.initialize = function(){
        console.log("initialize");
         google.maps.event.addListener(mapHandler.geoMarker, 'position_changed', function() {
            console.log("observer detected position change");
            console.log(this.getPosition().lat()+";"+this.getPosition().lng());
            var dataToPost = {"latitude":this.getPosition().lat(),"longitude":this.getPosition().lng()};
            $.ajax({
                type: "POST",
                url: "update",
                data: JSON.stringify(dataToPost),
                dataType: 'json',
                success: function(){console.log("success");},
                contentType:"application/json"
              });
     });
   };
};
