<header id="commonTopHeader">
	<h2>Museu</h2>
	
	<a id="headerMenuLink" href="#headerSidr">
		Menu
		<i class="fa fa-bars" id="headerMenuBars"></i>
	</a>
</header>

<div id="headerSidr">
	<ul>
		<li class="active"><a href="/webmuseum/">Home</a></li>
		<li><a href="/webmuseum/cenarios">Exibi��es</a></li>
	</ul>
</div>

<script>
	$('#headerMenuLink').sidr({name: 'headerSidr', side: 'left', displace: false});
</script>