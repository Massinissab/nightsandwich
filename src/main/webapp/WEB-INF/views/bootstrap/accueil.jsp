<jsp:include  page="/header/commander" />

<script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAw62tDmdP9P5zPFpuJAjOYm4dMF6yQpb4&sensor=true">
</script>

<script src="resources/js/maps/geolocationmarker-compiled.js"></script>

<script type="text/javascript" src="resources/js/maps/mapHandler.js"></script>
<script type="text/javascript" src="resources/js/maps/mapNotifier.js"></script>

<script type="text/javascript" >
    
    var mapHandler = new MapHandler();
    //Create map on dom ready
    $(document).ready(function(){
        mapHandler.drawMap();
    });
    
</script>
    <div class="container-fluid">
         <div class="row-fluid">
                <div class="span12">
                    <ul id="food-categories" class="nav nav-pills">
                        <li class="active">
                          <a data-toggle="pill" href="#sandwichs">Sandwichs</a>
                        </li>
                        <li><a data-toggle="pill" href="#pates">Pâtes</a></li>
                        <li class="dropdown">  
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Desserts...<b class="caret bottom-up"></b></a>  
                            <ul class="dropdown-menu bottom-up pull-right">  
                              <li><a data-toggle="pill" href="#desserts">Desserts</a></li>  
                              <li><a data-toggle="pill" href="#boissons">Boissons</a></li>  
                              <li><a data-toggle="pill" href="#gourmandises">Gourmandises</a></li>  
                            </ul>  
                          </li> 
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="sandwichs" >
                            <jsp:include  page="includes/products/sandwich.jsp" />
                        </div>
                        <div class="tab-pane fade" id="pates">
                          <p>Une selection de pâtes faîte maison. Un vrai régal.</p>
                        </div>
                        <div class="tab-pane fade" id="desserts">
                          <p>Et non pas si vite ! Des desserts pour les plus gourmands.</p>
                        </div>
                        <div class="tab-pane fade" id="boissons">
                          <p>Les boissons pour un repas plus fluide !</p>
                        </div>
                        <div class="tab-pane fade" id="gourmandises">
                          <p>Difficiles de résister ? Alors n'hésitez pas, choisissez parmis une variété de gourmandises</p>
                        </div>
                        
                        
                    </div>
                    
                </div>
            </div>
        
        <div id="map-canvas" style="height: 200px; width: 90%"></div>

    </div>

    <jsp:include  page="common/footer.jsp" />