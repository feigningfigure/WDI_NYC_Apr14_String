$(document).ready(function(){

	$(".intro").css("color", "red");
	$("#less-link1").click(function() {
		console.log("hello")
		$(".less-text1").css("color", "white");
	});

	$("#less-link2").click(function() {
		console.log("hello")
		$(".less-text2").css("color", "white");
	});

});