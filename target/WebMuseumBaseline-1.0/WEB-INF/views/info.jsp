
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
				<a class="nameMenu" href="#sidr-main">
					Menu
					<div class="headerMenu fa fa-bars" id="simple-menu"  ></div>
				</a>
			</header>
			
			<section id="objectName">
				<h1>${name} - Informações</h1>
			</section>
			
			<article>
				${obj.getContent()}
			</article>
			
			<section id="menuObject">
				<ul>
					<li>
						<a class="iconTextObject" href="/webmuseum/?id=${id}">
							<div class="fa fa-undo"></div>
							Voltar
						</a>
					</li>
				</ul>
			</section>
		</div>
	</body>
	
	<script>
		$('#simple-menu').sidr({side: 'left', displace: false});
	</script>
</html>

