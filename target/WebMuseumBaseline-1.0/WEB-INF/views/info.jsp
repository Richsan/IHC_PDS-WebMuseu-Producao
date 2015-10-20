
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.lpsmuseum.dto.Annotation"%>

<!DOCTYPE HTML>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8"/>
    <title>Objeto Museologico</title>
    <meta name="description" content="" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width">
    <script src="/webmuseum/resources/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/webmuseum/resources/stylesheet/allmedia.css" />
    <link rel="stylesheet" type="text/css" href="/webmuseum/resources/font-awesome-4.4.0/css/font-awesome.min.css" />
     <link rel="stylesheet" type="text/css" href="/webmuseum/resources/font-awesome-4.4.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="/webmuseum/resources/sidr/stylesheets/jquery.sidr.dark.css">
     <script src="resources/sidr/jquery.sidr.min.js"></script>
  </head>
  <body>
    <div id="wraper">
      <header>
	<h2>Museu</h2>
	<div><a class="nameMenu">Menu</a> <i class=" headerMenu fa fa-bars" id="simple-menu"  href="#sidr-main"></i></div>
      </header>
      <section id="objectName"><h1>${name} - Informações</h1></section>
      <article>
	${obj.getContent()}
      </article>
      <section id="menuObject">
	<ul>
	  <li><i class="fa fa-undo"></i><a class="iconTextObject" href="/webmuseum/?id=${id}">Voltar</a></li>
	</ul>
      </section>
    </div>
  </body>
  <script>
     $('#simple-menu').sidr({side: 'left', displace: false});
  </script>
</html>

