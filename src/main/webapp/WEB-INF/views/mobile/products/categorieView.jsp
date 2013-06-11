
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/header/mobile"></jsp:include>

<script type="text/javascript">
    $(document).ready(function(){
        
            $(".products select").change(function(){
                $("#order" ).button( "enable" );
            });
        
    });
    
</script>

<h4>${productCategorie.accroche}</h4>

<form action="/order/cart" method="POST">
<ul class="products" data-role="listview" data-inset="true">
    <c:forEach var="product" items="${productCategorie.productList}" varStatus="loop">
            <li data-role="fieldcontain">
                <input type="hidden" name="items[${loop.index}].product" value="${product}"/>
               <label for="select-${product}" class="select"><strong>${product.name} </strong> </label>
               <select data-inline="true"  name="items[${loop.index}].quantity" id="select-${product}" data-native-menu="false" data-mini="true">
                    <option value="0">Quantité :</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
            </li>
        </c:forEach>
        
    </ul>
    
    
    <input id="order" disabled="" type="submit" value="Commander" data-theme="b" data-icon="check" data-iconpos="right" />
</form>


<jsp:include page="../includes/common/footer.jsp"></jsp:include>
    