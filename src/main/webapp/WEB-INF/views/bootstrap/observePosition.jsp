<jsp:include  page="/header/commander" />
<script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAw62tDmdP9P5zPFpuJAjOYm4dMF6yQpb4&sensor=true">
</script>

<script src="${pageContext.servletContext.contextPath}/resources/js/maps/geolocationmarker-compiled.js"></script>

<script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/maps/mapHandler.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/maps/mapObserver.js"></script>


<script type="text/javascript" >
    
    var mapHandler = new MapHandler();
    //Create map on dom ready
    $(document).ready(function(){
        mapHandler.drawMap();
        var mapObserver = new MapObserver();
        mapObserver.initialize();
    });
    
</script>

    <div class="container-fluid">
         <div class="row-fluid">
                <div class="span12">
                   Page permettant de mettre à jour sa position et de notifier
                    
                </div>
            </div>
        
        <div id="map-canvas" style="height: 200px; width: 90%"></div>

    </div>

<jsp:include  page="common/footer.jsp" />