<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery-1.9.1.min.js" ></script>
        <link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
        <link href="${pageContext.servletContext.contextPath}/resources/css/application.css" rel="stylesheet">
        <script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap.js"> </script>
        <link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap-responsive.css" rel="stylesheet">
        
        
         <style type="text/css">
                @media (min-width: 980px) {
                    body {
                      padding-top: 60px;
                      padding-bottom: 40px;
                    }
                    .sidebar-nav {
                      padding: 9px 0;
                    }
                }
                

                @media (max-width: 980px) {
                  /* Enable use of floated navbar text */
                  .navbar-text.pull-right {
                    float: none;
                    padding-left: 5px;
                    padding-right: 5px;
                  }
                }
    </style>
    
    <script type="text/javascript" >
        $(document).ready(function(){
       });
    </script>
    </head>
    <body>
        
        <div class="navbar navbar-inverse navbar-fixed-top">
         <div class="navbar-inner">
           <div class="container-fluid">
             <a class="brand" href="#">Project</a>
             <ul class="nav">
                 <li <c:if test="${categorie == 'commander'}">class="active"</c:if>><a href="bootstrap">Commander</a></li>
                 <li <c:if test="${categorie == 'about'}">class="active"</c:if>><a href="about">About</a></li>
                 <li <c:if test="${categorie == 'contact'}">class="active"</c:if>><a href="contact">Contact</a></li>
             </ul>
           </div>
         </div>
     </div>