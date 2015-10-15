<%@page import="java.util.ArrayList"%>
<%@page import="com.lpsmuseum.dto.object.Image"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="pags" %>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8"/>
    <title>Objeto Museologico</title>
    <meta name="description" content="The HTML5 Herald" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width">
    <script src="resources/jquery.min.js"></script>
    <script src="resources/slider/jquery.bxslider.min.js"></script>
    <link href="resources/slider/jquery.bxslider.css" rel="stylesheet" />
    <script type="text/javascript" src="resources/script.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/stylesheet/allmedia.css" />
    <link rel="stylesheet" type="text/css" href="resources/font-awesome-4.4.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="resources/sidr/stylesheets/jquery.sidr.dark.css">
     <script src="resources/sidr/jquery.sidr.min.js"></script>
  </head>
  
  <body>
      <a hidden="true" id="start">${id}</a>
    <div id="wraper">
      <div id="overlay">
	<div id="window">
	  <button type="button" id="resizeBt" class="btOverlay">Ajustar</button>
	  <button type="button" id="closeBt" class="btOverlay">x</button>
	  <div class="img">
	    <img src="resources/img/monalisa.jpg" id="imgView"></img>
	  </div>
	</div>
      </div>
        
      <div id="sidr">
        
        <ul>
        <li><a href="#">Home</a></li>
        <li class="active"><a href="#">Exibiçoes</a></li>
        </ul>
      </div>
    
      <header>
	<h2>Museu</h2>
	<div><a class="nameMenu">Menu</a> <i class=" headerMenu fa fa-bars" id="simple-menu"  href="#sidr-main"></i></div>
      </header>
      <section id="objectName"><h1>Monalisa</h1></section>
      <ul id="slide">
          <c:set var="count" value="0" scope="page" />
          <c:forEach items="${objList}" var="obj">
               <li><img src="resources/img/${obj.getUrlAddress()}" id="img${count}"></img></li>
               <c:set var="count" value="${count + 1}" scope="page"/>
          </c:forEach>
      </ul>
      <c:set var="count" value="0" scope="page" />
      <c:forEach items="${objList}" var="obj">
        <a hidden="true" id="objNameId${count}">${obj.getName()}</a>
        <a hidden="true" id="objCode${count}">${obj.getId()}</a>
        <c:set var="count" value="${count + 1}" scope="page"/>
      </c:forEach>
       <section id="menuObject">
	 <ul>
          <li onclick="visualizar();"><i class="fa fa-eye objectIcon"></i><a class="iconTextObject">Ver</a></li>
          <li><i class="fa fa-info-circle"></i><a class="iconTextObject" href="/webmuseum/info/?obj=${objList.get(0).getId()}" id="info">info</a></li>
	  <li><i class="fa fa-book"></i><a class="iconTextObject" href="/webmuseum/text?id=${objList.get(0).getId()}" id="ler">Ler</a></li>
          <li><i class="fa fa-puzzle-piece"></i><a class="iconTextObject" href="texto0.htm" id="ler">Desafio</a></li>
	</ul>
      </section>
    </div>
  </body>
</html>
