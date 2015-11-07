<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="pags" %>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8"/>
    <title>Cenários</title>
    <meta name="description" content="" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width">
    <script src="/webmuseum/resources/jquery.min.js"></script>
    <script src="/webmuseum/resources/slider/jquery.bxslider.min.js"></script>
    <link href="/webmuseum/resources/slider/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="/webmuseum/resources/stylesheet/allmedia.css" />
    <link rel="stylesheet" type="text/css" href="/webmuseum/resources/font-awesome-4.4.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="/webmuseum/resources/sidr/stylesheets/jquery.sidr.dark.css">
     <script src="/webmuseum/resources/sidr/jquery.sidr.min.js"></script>
  </head>
  
  <body>
    <div id="wraper">
      	       
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
      
      <section id="listaCenarios">
          <ul>
              <li>Nome cenário 1</li>
              <li>Nome cenário 2</li>
              <li>Nome cenário 3</li>
              <li>Nome cenário 4</li>
          </ul>
      </section>
    </div>
  </body>
  <script>
     $('#simple-menu').sidr({side: 'left', displace: false});
  </script>  
</html>
