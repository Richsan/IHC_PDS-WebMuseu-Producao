<header id="commonTopHeader">
	<h2>Museu</h2>
	
	<a id="headerMenuLink" href="#headerSidr">
		Menu
		<i class="fa fa-bars" id="headerMenuBars"></i>
	</a>
</header>

<div id="headerSidr">
	<div id="closeIconHolder">
		<img class="closeIcon" src="resources/slide-in-left.png" onclick="$.sidr('close', 'headerSidr');">
	</div>

	<ul>
		<li><a href="/webmuseum/">Home</a></li>
		<li><a href="/webmuseum/cenarios">Exibições</a></li>
	</ul>
</div>

<script>
	$('#headerMenuLink').sidr({name: 'headerSidr', side: 'left', displace: false});
</script>