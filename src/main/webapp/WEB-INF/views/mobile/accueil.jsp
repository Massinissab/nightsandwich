
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/header/mobile?backButton=false"></jsp:include>
             
    <ul data-role="listview">
        <c:forEach items="${productCategories}" var="productCategorie">
            <li><a href="/products/${productCategorie.name().toLowerCase()}" data-transition="slide" data-inline="true">${productCategorie.label}</a></li>
        </c:forEach>
        
    </ul>

<jsp:include page="includes/common/footer.jsp"></jsp:include>
    