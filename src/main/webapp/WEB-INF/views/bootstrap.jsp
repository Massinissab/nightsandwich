<script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAw62tDmdP9P5zPFpuJAjOYm4dMF6yQpb4&sensor=true">
</script>
    
<jsp:include  page="/header/commander" />

    <div class="container-fluid">
         <div class="row-fluid">
                <div class="span12">
                    <ul id="food-categories" class="nav nav-pills">
                        <li class="active">
                          <a data-toggle="pill" href="#sandwichs">Sandwichs</a>
                        </li>
                        <li><a data-toggle="pill" href="#pates">Pâtes</a></li>
                        <li><a data-toggle="pill" href="#desserts">Desserts</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="sandwichs" >
                          <p>Voici la sélection de sandwich que nous proposons pour votre plus grand plaisir.</p>
                        </div>
                        <div class="tab-pane fade" id="pates">
                          <p>Une selection de pâtes faîte maison. Un vrai régal.</p>
                        </div>
                        <div class="tab-pane fade" id="desserts">
                          <p>Et non pas si vite ! Des desserts pour les plus gourmands.</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        
        <div id="map-canvas" style="height: 400px; width: 500px"> &nbsp;test</div>

    </div>

<script type="text/javascript">
    var map;
      function initialize() {
        var mapOptions = {
          center: new google.maps.LatLng(48.939247,2.472181),
          zoom: 11,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
         map = new google.maps.Map(document.getElementById("map-canvas"),
            mapOptions);
      }
      google.maps.event.addDomListener(window, 'load', initialize);
      
     $(document).ready(function(){
          if (navigator.geolocation){
              console.log("getting geolocation");
              navigator.geolocation.getCurrentPosition(positionOnMap,handleError);
          }
          else{
            console.log("Geolocation is not supported by this browser.");
          }
         
     });
     
     /**
     * Position a marker on map
     * @param {position} position :  position returned by the navigator
     */
    function positionOnMap(position) {
        console.log("test");
         var marker = new google.maps.Marker({
            map: map,
            position: position
        });
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
 </script>

    <jsp:include  page="common/footer.jsp" />