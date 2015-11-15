var correctIcon = "<i class=\"correct fa fa-check\"></i>";
var incorrectIcon = "<i class=\"incorrect fa fa-times-circle\"></i>";
var btResponde = false;
var perguntaNum = 1;
var numAcertos = 0;
var divResultado, divAlertaDesafio;

function iniciarDesafio()
{
    $("#apresentacao").hide();
    $("#pergunta1").show();
    document.getElementById("desafioBt").style.visibility = "visible";
}

function voltarExibicao()
{
    var idCenario = document.getElementById("cenarioId").innerHTML;
    window.location = "/webmuseum/exibicao?id="+idCenario;;
}

function checkAlternativas(resposta,questionMarked, alternativa,index)
{
    var conteudo = alternativa.getElementsByClassName("content")[0].innerHTML;
    if(conteudo == resposta)
    {
        alternativa.innerHTML = correctIcon + alternativa.innerHTML;
        
         divResultado.style.visibility = "visible";
        
        if(questionMarked == index)
        {
            divResultado.innerHTML = "Parabéns! Você Acertou!";
            numAcertos++;
        }
        else
            divResultado.innerHTML = "Que Pena.Você Errou.";
        
    }
    else
        alternativa.innerHTML = incorrectIcon + alternativa.innerHTML;
}

function disableRadioButtons(pergunta,questionMark)
{
    var radioBts = pergunta.getElementsByTagName("input");
   
    [].forEach.call(radioBts,function(input,index){input.disabled = true;});
    radioBts[questionMark].disabled = false;
    radioBts[questionMark].checked = true;
    
}
function getQuestionMark(pergunta)
{
    var radioBts = pergunta.getElementsByTagName("input");
    var i;
    for(i = 0; i < 4;i++)
        if(radioBts[i].checked)
        {
            divAlertaDesafio.innerHTML = "";
            return i;
        }
    
    divAlertaDesafio.innerHTML = "Você deve assinalar uma das Alternativas!"
    return -1;
}
function responder(evt)
{
    
    if(!btResponde)
    {
        var p = $("#pergunta"+perguntaNum);
        var pergunta = document.getElementById("pergunta"+perguntaNum);
        var questionMark = getQuestionMark(pergunta);
        if(questionMark == -1)return;
        
        var alternativas = pergunta.getElementsByClassName("alternativa");
        var resposta = pergunta.getElementsByClassName("resposta")[0].innerHTML;
        [].forEach.call(alternativas,checkAlternativas.bind(this,resposta,questionMark));
        disableRadioButtons(pergunta,questionMark);
        this.innerHTML = "Continuar";
        btResponde = true;
        return;
    }
   
    divResultado.style.visibility = "hidden";
    var perguntaCorrente = $("#pergunta"+perguntaNum);
    perguntaNum++;
    if(perguntaNum < 6)
        var proximaPergunta = $("#pergunta"+perguntaNum);
    else
        var proximaPergunta = $("#resultadoFinal");
    
    perguntaCorrente.hide();
    proximaPergunta.show();
    console.log(perguntaNum);
    if(perguntaNum < 5)
        this.innerHTML = "Responder";
    if(perguntaNum == 5)
       this.innerHTML = "Finalizar";
    if(perguntaNum > 5)
    {
      var finalDiv = document.getElementById("resultadoFinal");
      finalDiv.innerHTML += " "+ numAcertos + " de 5 questões<br>";
      this.innerHTML = "Terminar";
      this.onclick = function(){var idCenario = document.getElementById("cenarioId").innerHTML; 
          window.location = "/webmuseum/exibicao?id="+idCenario;};
    }
    btResponde = false;
}

$(document).ready(function(){
   var bt = document.getElementById("desafioBt");
   bt.onclick = responder;
   bt.style.visibility = "hidden";
   document.getElementById("iniciar").onclick = iniciarDesafio;
   document.getElementById("voltar").onclick = voltarExibicao;
   divResultado = document.getElementById("resultado");
   divAlertaDesafio = document.getElementById("alertaDesafio");
});
        
        


