<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Magic sandwich</title>
  <link rel="stylesheet" href="/resources/css/jquery.mobile-1.3.0.css">
  <script src="/resources/js/jquery-1.9.1.min.js"></script>
  <script src="/resources/js/jquery.mobile-1.3.0.js"></script>
</head>
<body>
 
<div data-role="page">
  <div data-role="header" data-position="fixed">
      <a href="/" data-rel="back" data-inline="true" data-icon="arrow-l">Retour</a>
    <h1>Magic Sandwich</h1>
    <a href="/" data-role="button" data-icon="home">Accueil</a>
  </div>
  <div data-role="content">
      <div data-display="overlay" data-role="panel" id="mypanel">
          <ul data-role="listview">
                <li><a href="test" data-transition="slide" data-inline="true">Test</a></li>
                <li><a href="commander">Audi</a></li>
                <li><a href="about">BMW</a></li>
          </ul>
      </div><!-- /panel -->