<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="apple-mobile-web-app-capable" content="yes" >
  <title>Magic sandwich</title>
  <link rel="stylesheet" href="/resources/css/mobile/application.css">
  <link rel="stylesheet" href="/resources/css/jquery.mobile-1.3.0.css">
  <script src="/resources/js/jquery-1.9.1.min.js"></script>
  <script src="/resources/js/jquery.mobile-1.3.0.js"></script>
  <script src="/resources/js/add2home.js"></script>
  <link rel="stylesheet" href="/resources/css/add2home.css">
</head>
<body>
 
<div data-role="page" data-theme="c">
  <div data-role="header" data-position="fixed" role="banner">
      <c:if test="${backButton}">
          <a href="/" data-rel="back" data-direction="reverse" data-inline="true" data-icon="arrow-l" data-corners="true" class="ui-btn-left">Retour</a>
      </c:if>
    <h1>Magic Sandwich</h1>
    
    <a href="#mypanel" data-role="button" data-icon="bars" data-iconpos="notext" data-inline="true" class="ui-btn-right">Icon only</a>
  </div>
  <div data-role="content">
      
      <!-- Panel -->
      <div data-display="overlay" data-role="panel" id="mypanel" data-position="right" data-theme="c">
            <ul data-role="listview" data-theme="a">
                  <li><a  href="/">Commander</a></li>
                  <li><a  href="/order">Ma commande</a></li>
                  <li><a  href="/contact">Pour nous contacter</a></li>
                  <li><a href="/about">A propos</a></li>
            </ul>
          
      </div><!-- /panel -->