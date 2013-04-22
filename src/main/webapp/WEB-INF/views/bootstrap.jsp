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
                        <div class="tab-pane fade " id="sandwichs" >
                          <p>Voici la sélection de sandwich que nous proposons pour votre plus grand plaisir.</p>
                        </div>
                        <div class="tab-pane fade active in" id="pates">
                          <p>Une selection de pâtes faîte maison. Un vrai régal.</p>
                        </div>
                        <div class="tab-pane fade" id="desserts">
                          <p>Et non pas si vite ! Des desserts pour les plus gourmands.</p>
                        </div>
                    </div>
                    
                </div>
            </div>

    </div>

    <jsp:include  page="common/footer.jsp" />