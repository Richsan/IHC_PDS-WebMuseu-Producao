<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8"/>
    <title>Objeto Museologico</title>
    <meta name="description" content="The HTML5 Herald" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width">
    <script src="/webmuseum/resources/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/webmuseum/resources/font-awesome-4.4.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/webmuseum/resources/stylesheet/allmedia.css" />
     <link rel="stylesheet" type="text/css" href="/webmuseum/resources/font-awesome-4.4.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="/webmuseum/resources/sidr/stylesheets/jquery.sidr.dark.css">
     <script src="resources/sidr/jquery.sidr.min.js"></script>
  </head>
  <body>
       <div id="sidr">
        <ul>
        <li><a href="#">Home</a></li>
        <li class="active"><a href="#">Exibiçoes</a></li>
        </ul>
      </div>
    <div id="wraper">
      <header>
	<h2>Museu</h2>
	<div><a class="nameMenu">Menu</a> <i class=" headerMenu fa fa-bars" id="simple-menu"  href="#sidr-main"></i></div>
      </header>
      <section id="objectName"><h1>Monalisa - Texto</h1></section>
      <article>
	<p>Mona Lisa (ou La Gioconda) é uma famosíssima obra de arte feita pelo italiano Leonardo da Vinci. O quadro, no qual foi utilizada a técnica do sfumato, retrata a figura de uma mulher com um sorriso tímido e uma expressão introspectiva.</p>

	<p>Em 1516, Leonardo da Vinci levou a obra da Itália para a França, quando foi trabalhar na corte do rei Francisco I, o qual teria comprado o quadro. Depois disso, a obra passou por várias mãos, chegando até mesmo a ser roubada. Napoleão Bonaparte, por exemplo, tomou a obra para si. Em 1911, a obra de arte foi roubada pelo italiano Vincenzo Peruggia, que a levou novamente para a Itália. Peruggia pensava que Napoleão havia tomado o quadro da Itália e levado para a França, assim desejou levar novamente a obra para sua terra natal.</p>

	<p>Uma das grandes discussões no meio artístico é sobre a mulher representada no quadro. Muitos historiadores acreditam que o modelo usado no quadro seja a esposa de Francesco del Giocondo, um comerciante de Florença. Outros afirmam que seja Isabel de Aragão, Duquesa de Milão, para a qual da Vinci trabalhou alguns anos. Para Lillian Schwartz, cientista dos Laboratórios Bell, Mona Lisa é um autorretrato de Leonardo da Vinci.</p>

	<p>Atualmente, o quadro fica exposto no Museu do Louvre, em Paris, França. Mona Lisa é, quase que certamente, a mais famosa e importante obra de arte da história, sendo avaliada, na década de 1960, em cerca de 100 milhões de dólares americanos, lhe conferindo, também, o título de objeto mais valioso, segundo o Guinness Book.</p>
      </article>
      <section id="menuObject">
	<ul>
	  <li><i class="fa fa-undo"></i><a class="iconTextObject" href="/webmuseum/">Voltar</a></li>
	</ul>
      </section>
    </div>
  </body>
  <script>
     $('#simple-menu').sidr({side: 'left', displace: false});
  </script>
</html>

