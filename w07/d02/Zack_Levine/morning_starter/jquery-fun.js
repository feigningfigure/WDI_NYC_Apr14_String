$( document ).ready(function() {
    console.log( "ready!" );

	$('p:first').click(function(){
	$(this).addClass("intro");
});

    $('#less-link1').click(function(){
//get the less link and get ready to do some click stuff
	$('#less-text1').slideToggle();

});
    $('#less-link2').click(function(){
//get the less link and get ready to do some click stuff
	$('#less-text2').hide();
});
});
