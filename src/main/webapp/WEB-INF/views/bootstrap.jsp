<jsp:include  page="/header/commander" />

    <div class="container-fluid">
         <div class="row-fluid">
                <div class="span12">
                    <ul id="food-categories" class="nav nav-pills">
                        <li class="active">
                          <a data-toggle="pill" href="#sandwichs">Sandwichs</a>
                        </li>
                        <li><a data-toggle="pill" href="#pates">P�tes</a></li>
                        <li><a data-toggle="pill" href="#desserts">Desserts</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade " id="sandwichs" >
                          <p>Voici la s�lection de sandwich que nous proposons pour votre plus grand plaisir.</p>
                        </div>
                        <div class="tab-pane fade active in" id="pates">
                          <p>Une selection de p�tes fa�te maison. Un vrai r�gal.</p>
                        </div>
                        <div class="tab-pane fade" id="desserts">
                          <p>Et non pas si vite ! Des desserts pour les plus gourmands.</p>
                        </div>
                    </div>
                    
                </div>
            </div>

    </div>

    <jsp:include  page="common/footer.jsp" />