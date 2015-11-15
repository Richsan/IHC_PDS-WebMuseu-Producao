<%@page import="java.util.ArrayList"%>
<%@page import="com.lpsmuseum.dto.object.Image"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="pags" %>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8"/>
		<title>Objeto Museologico</title>
		<meta name="description" content="" />
		<meta name="author" content="" />
		<meta name="viewport" content="width=device-width">
		<script src="resources/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="resources/stylesheet/allmedia.css" />
		<link rel="stylesheet" type="text/css" href="resources/font-awesome-4.4.0/css/font-awesome.min.css" />
		<link rel="stylesheet" href="resources/sidr/stylesheets/jquery.sidr.dark.css">
		<script src="resources/sidr/jquery.sidr.min.js"></script>
		
		<script type="text/javascript" src="resources/script.js"></script>
		<script src="resources/slider/jquery.bxslider.min.js"></script>
		<link href="resources/slider/jquery.bxslider.css" rel="stylesheet" />
	</head>

	<body>
		<script>
			cenarioId = ${id};
			slidePos = ${slidePos};
		</script>
		
		<a hidden="true" id="start">${id}</a>
		
		<div id="wraper">
			<div id="overlay">
				<div id="window">
					<button type="button" id="resizeBt" class="btOverlay">Ajustar</button>
					<button type="button" id="closeBt" class="btOverlay">x</button>
					<div class="imgHolder">
						<img src="resources/img/${objList.get(0).getUrlAddress()}" id="imgView"></img>
					</div>
				</div>
			</div>

			<%@ include file="include/headerMenu.jsp" %>
			
			<section id="titleObject">
				<h1>${objList.get(0).getName()}</h1>
			</section>
			
			<div id="slideArea">
				<c:set var="count" value="0" scope="page" />
				<ul id="slide">
					<c:forEach items="${objList}" var="obj">
						<li> <img src="resources/img/${obj.getUrlAddress()}" id="img${count}"></img> </li>

						<c:set var="count" value="${count + 1}" scope="page"/>
					</c:forEach>
				</ul>

				<c:set var="count" value="0" scope="page" />
				<c:forEach items="${objList}" var="obj">
					<div hidden="true" id="objNameId${count}">
						${obj.getName()}
					</div>

					<div hidden="true" id="objCode${count}">
						${obj.getId()}
					</div>

					<c:set var="count" value="${count + 1}" scope="page"/>
				</c:forEach>

				<!-- botão da galeria em baixo do slide -->
				<div id="galeriaBtArea">
					<a id="galeriaBt" href="#galeriaSidr">
						<i class="fa fa-th""></i>
					</a>
				</div>
			</div>
			
			<!-- menu galeria -->
			<div id="galeriaSidr">

				<div id="galeriaContainer">
					<img class="closeIcon" src="resources/slide-in-right.png" onclick="$.sidr('close', 'galeriaSidr');">
					
					<c:set var="count" value="0" scope="page" />
					<c:forEach items="${objList}" var="obj">
						<div class="galeriaItem">
							<a onclick="selectSlide(${count});"> <!--href="/webmuseum/exibicao?id=${id}&imgId=${count}">-->
								<img src="resources/img/${obj.getUrlAddress()}" id="img${count}">
								<figcaption> ${obj.getName()} </figcaption>
							</a>
						</div>

						<c:set var="count" value="${count + 1}" scope="page"/>
					</c:forEach>
				</div>
			</div>

			<script>
				$('#galeriaBt').sidr({name: 'galeriaSidr', side: 'right', source: '#galeriaSidr'});
			</script>

			<!-- menu inferior -->
			<section id="menuObject">
				<ul>
					<li>
						<a class="iconTextObject" onclick="visualizar();">
							<i class="fa fa-eye objectIcon"></i>
							Ver
						</a>
					</li>
					
					<li>
						<a class="iconTextObject" href="/webmuseum/info?cenarioId=${id}&imgId=${objList.get(0).getId()}&slidePos=${slidePos}" id="info">
							<i class="fa fa-info-circle"></i>
							Info
						</a>
					</li>
					
					<li>
						<a class="iconTextObject" href="/webmuseum/text?cenarioId=${id}&imgId=${objList.get(0).getId()}&slidePos=${slidePos}" id="ler">
							<i class="fa fa-book"></i>
							Ler
						</a>
					</li>
					
					<li>
						<a class="iconTextObject" href="/webmuseum/desafio?cenarioId=${id}" id="desafio">
							<i class="fa fa-puzzle-piece"></i>
							Desafio
						</a>
					</li>
				</ul>
			</section>
		</div>
	</body>
</html>
