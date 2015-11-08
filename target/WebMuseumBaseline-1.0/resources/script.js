var overlay;

var slide;

function main()
{

	overlay = $("#overlay");
	document.getElementById("closeBt").onclick = fechar;
	document.getElementById("resizeBt").onclick = ajustarImg;
}
function fechar()
{
	overlay.hide();
}
function desajustarImg()
{
	var img = document.getElementById("imgView");
	img.style.width = img.naturalWidth + "px";
	img.style.height = img.naturalHeight + "px";
	var bt = document.getElementById("resizeBt");
	bt.innerHTML = "Ajustar";
	bt.onclick = ajustarImg;

}
function ajustarImg()
{
	var img = document.getElementById("imgView");
	img.style.width = "100%";
	img.style.height = "100%";
	var bt = document.getElementById("resizeBt")
	bt.innerHTML = "Tamanho Original";
	bt.onclick = desajustarImg;
}

function visualizar()
{
	console.log("visu");
	overlay.show();
}

function docReady()
{
    
       var cenarioId = document.getElementById("cenarioId").innerHTML;
	function slideTransition(_, _, newIdx)
	{
		var info, text, name, view;

		info = document.getElementById("info");
		text = document.getElementById("ler");
		view = document.getElementById("imgView");
		name = document.getElementById("objectName");
		imgUrl = document.getElementById("img" + newIdx).src;
		
		info.href = "/webmuseum/info/?obj=" + document.getElementById("objCode" + newIdx).innerHTML+"&cenarioId="+cenarioId;
		text.href = "/webmuseum/text?id=" + document.getElementById("objCode" + newIdx).innerHTML;
		view.src = imgUrl;


		var nameTxt = document.getElementById("objNameId" + newIdx).innerHTML;
		name.innerHTML = "<h1>" + nameTxt + "</h1>";

	}
	var init = parseInt(document.getElementById("start").innerHTML);
	slide = $('#slide').bxSlider(
			{
				// startSlide: init,
				responsive: true,
				touchEnabled: true,
				infiniteLoop: false,
				adaptiveHeight: true,
				hideControlOnEnd: true,
				buildPager: function () {
					return "";
				},
				onSlideBefore: slideTransition
			});
}
$(document).ready(docReady);
window.onload = main;
