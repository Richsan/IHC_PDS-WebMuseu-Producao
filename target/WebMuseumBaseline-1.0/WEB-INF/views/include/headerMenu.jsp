<header id="commonTopHeader">
	<h2>Museu</h2>
	
	<a id="headerMenuLink" href="#headerSidr">
		Menu
		<div class="fa fa-bars" id="headerMenuBars"></div>
	</a>
</header>

<div id="headerSidr">
	<ul>
		<li class="active"><a href="/webmuseum/">Home</a></li>
		<li><a href="/webmuseum/cenarios">Exibições</a></li>
	</ul>
</div>

<script>
	$('#headerMenuLink').sidr({name: 'headerSidr', side: 'left', displace: false});
</script>