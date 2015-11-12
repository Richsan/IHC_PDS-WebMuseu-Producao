<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.lpsmuseum.dto.Scenario"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="pags" %>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8"/>
		<title>Exibições</title>
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
			<%@ include file="include/headerMenu.jsp" %>  

			<h1 id="titleObject">Exibições</h1>

			<section id="listaCenarios">
				<ul>
					<c:forEach items="${listaCenarios}" var="obj">
						<li>
							<a href="/webmuseum/exibicao?id=${obj.getId()}">
								${obj.getName()}
							</a>
						</li>
					</c:forEach>
				</ul>
			</section>
		</div>
	</body>
</html>
