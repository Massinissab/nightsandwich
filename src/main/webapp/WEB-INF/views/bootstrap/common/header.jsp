<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=no;">
        <meta name="format-detection" content="telephone=no">
       
        <title>NightSandwich</title>
        <meta name="Description" 
              content="Sandwiche de nuit. Une petite faim de nuit, venez sur notre site pour commander de délicieux sandwichs et autre plats">
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery-1.9.1.min.js" ></script>
        <link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
        <link href="${pageContext.servletContext.contextPath}/resources/css/application.css" rel="stylesheet">
        <script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap.js"> </script>
        <link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap-responsive.css" rel="stylesheet">
    
    </head>
    <body>
        
        <div class="navbar navbar-inverse navbar-fixed-top">
         <div class="navbar-inner">
           <div class="container-fluid">
                <a class="brand" href="/">Magic Sandwich</a>
             <ul class="nav">
                 <li <c:if test="${categorie == 'commander'}">class="active"</c:if>><a href="/">Commander</a></li>
                 <li <c:if test="${categorie == 'about'}">class="active"</c:if>><a href="about">About</a></li>
                 <li <c:if test="${categorie == 'contact'}">class="active"</c:if>><a href="contact">Contact</a></li>
             </ul>
           </div>
         </div>
     </div>