
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/header/mobile"></jsp:include>
             
<h4>${productCategorie.accroche}</h4>
<ul data-role="listview" data-inset="true">
        <c:forEach var="product" items="${productCategorie.productList}">
            <li data-role="fieldcontain">
               <label for="select-${product}" class="select">${product.name}</label>
               <select data-inline="true"  name="select-${product}" id="select-${product}" data-native-menu="false" data-mini="true">
                    <option>Quantité :</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
            </li>
        </c:forEach>
        
    </ul>


<jsp:include page="../includes/common/footer.jsp"></jsp:include>
    