
function setEventHandlers(){
	$("#start").click(function(){
		console.log("Start button has been clicked");
});
};

var nIntervId;

function startTimer() {
	nIntervId = setInterval(flashText, 500);
}

function startTimer() {
	var oElem = document.getElementById("my_box");
	oElem.style.color = oElem.style.color == "red" ? "blue" : "red";
}
}
function stopTimer() {
	clearInterval(nIntervId);
}
$( document ).ready(function(){

	setEventHandlers();//running these funcitons
});
