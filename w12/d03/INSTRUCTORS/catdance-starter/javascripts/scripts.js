
$(function(){

	$('#dance_button').on('click', function(){
		var $cat = $('#cat');

		if ($cat.hasClass("moved")){
			$cat.animate({
				left: "-=400px",
				marginTop: "-=400px"
			}, 4000);
			$cat.removeClass("moved");
		} else {
			$cat.animate({
				left: "+=400px",
				marginTop: "+=400px"
			}, 4000);
			$cat.addClass("moved");
		}		
	});
	
});