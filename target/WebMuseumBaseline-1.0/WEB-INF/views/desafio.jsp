<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.lpsmuseum.dto.Annotation"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8"/>
		<title>Museu - Desafio</title>
		<meta name="description" content="" />
		<meta name="author" content="" />
		<meta name="viewport" content="width=device-width">
		<script src="/webmuseum/resources/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="/webmuseum/resources/font-awesome-4.4.0/css/font-awesome.min.css" />
          	<link rel="stylesheet" type="text/css" href="/webmuseum/resources/stylesheet/allmedia.css" />
                <link rel="stylesheet" href="/webmuseum/resources/sidr/stylesheets/jquery.sidr.dark.css">
		<script src="/webmuseum/resources/sidr/jquery.sidr.min.js"></script>
                <script src="/webmuseum/resources/desafio.js"></script>
	</head>
	
	<body>
		<div id="wraper">
			<%@ include file="include/headerMenu.jsp" %>
                        <div id="cenarioId" hidden>${idCenario}</div>
                        <section id="titleObject">
				<h1>Desafio</h1>
                        </section>
                        
                         <section id="alertaDesafio">
                         </section>
                        
			<section id="desafio">
                            <div id="apresentacao">
                                <p>O desafio consiste de 5 perguntas de multipla escolha
                                   (4 alternativas) sobre a exibição que você está vendo.</p>
                                <p>Teste seu novo conhecimento!</p>
                                <p>Ao clicar em "Fazer Desafio" você será apresentado as questões do desafio</p>
                                <p>Caso não deseje fazer o desafio, é só clicar em "Voltar a Exibição"</p>
                                
                                <button type="button" id="iniciar">Fazer Desafio</button>
                                <button type="button" id="voltar">Voltar a Exibição</button>
                            </div>
                            <c:set var="count" value="1" scope="page" />
                            <c:set var="altCount" value="1" scope="page" />
                            <c:forEach items="${perguntas}" var="obj">
                                <div class="pergunta" id="pergunta${count}" hidden>
                                    <div class="enunciado">${obj.getDescription()}</div>
                                    <div class="resposta">${respostas.get(count-1).getDescription()}</div>
                                    <c:forEach items="${obj.getAnswers()}" var="alternativa">
                                        <div class="alternativa"><input type="radio" name="quest1" id="alt${altCount}"/>
                                            <label for="alt${altCount}" class="content">${alternativa.getDescription()}</label>
                                        </div>
                                        <c:set var="altCount" value="${altCount + 1}" scope="page"/>
                                    </c:forEach>
                                </div>
                                <c:set var="count" value="${count + 1}" scope="page"/>
                            </c:forEach>
                                             
                            <div id="resultadoFinal" hidden>
                                O Desafio acabou!<br>Você Acertou: 
                            </div>
                            <section id="resultado">
                            </section>
                            <button id="desafioBt" type="button">Responder</button>
			</section>			
			
		</div>
	</body>
</html>