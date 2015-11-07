<header id="commonTopHeader">
	<h2>Museu</h2>
	
	<a id="headerMenuLink" href="#sidr">
		Menu
		<div class="fa fa-bars" id="headerMenuBars"></div>
	</a>
</header>

<div id="sidr">
	<ul>
		<li><a href="#">Home</a></li>
		<li class="active"><a href="#">Exibiçoes</a></li>
	</ul>
</div>

<script>
	$('#headerMenuLink').sidr({side: 'left', displace: false});
</script>