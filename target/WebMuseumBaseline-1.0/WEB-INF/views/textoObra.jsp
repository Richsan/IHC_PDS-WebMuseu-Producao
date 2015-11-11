<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
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
	</head>

	<body>
		<%@ include file="include/headerMenu.jsp" %>

		<section id="titleObject"><h1>${title}</h1></section>

		<div style="white-space: pre-wrap; padding: 0% 8% 0% 5%;">
			<jsp:include page ="../../resources/txt/${text}"/>
		</div>

		<section id="menuObject">
			<ul>
				<li>
					<a class="iconTextObject" href="/webmuseum/exibicao?id=${cenarioId}&slidePos=${slidePos}">
						<i class="fa fa-undo"></i>
						Voltar
					</a>
				</li>
			</ul>
		</section>
	</body>
</html>
