// $(function(){ });
// shorthand for document.ready function

$(document).ready(function() {
	
	$("p").first().attr("class", "intro");

	// $("p").first().addClass("intro");
	// $('p:first').addClass("intro");
});

$(document).ready(function() {
	$("#less-link1").click(function() {
		var moreAndLess = $("#less-text1").is(':visible') ? 'More' : 'Less';
    $(this).text(moreAndLess);

		$("#less-text1").slideToggle("slow");
		// replaceText();
	});

	$("#less-link2").click(function() {
		var moreAndLess = $("#less-text2").is(':visible') ? 'More' : 'Less';
    $(this).text(moreAndLess);

		$("#less-text2").toggle("slow");
		// replaceText2();
	});

	// function replaceText(){
	// 	if($("#less-link1").text() === "Less"){
	// 		$("#less-link1").html("More");
	// 	}	else {
	// 		$("#less-link1").html("Less");
	// 	}
	// }

	// function replaceText2(){
	// 	if($("#less-link2").text() === "Less"){
	// 		$("#less-link2").html("More");
	// 	}	else {
	// 		$("#less-link2").html("Less");
	// 	}
	// }

});