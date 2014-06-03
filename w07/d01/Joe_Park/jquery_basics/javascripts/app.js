$(document).ready(function(){

	$('#greeting').click(function(){
		if ( $(this).css("color") === "rgb(0, 0, 255)" ) {
		$(this).css("color", "red");
		} else {
			$(this).css("color", "blue");
		}
	});

	$('#greeting').hover(function(){
		$(this).fadeOut(1000);
		$(this).fadeIn(1000);
		
	});

});



	// slide dropdown
	// $( "li" ).filter( ":odd" ).hide().end().filter( ":even" ).hover(function() {
	// 	$( this ).toggleClass( "active" ).next().stop( true, true ).slideToggle();
	// });

