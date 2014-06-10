$(function(){
	console.log("DOM loaded, running js")
	addEventListeners();
	$(".bio").hide();
	$(".hide").hide();
});


function addEventListeners(){
	console.log("running addEventListeners")
	var $show_btns = $('a.show')
	var $hide_btns = $('a.hide')

	$show_btns.click(function(){
		console.log('show_btns clicked');
		showBioFromBtn($(this));
		switchButtonVisability($(this));
	})

	$hide_btns.click(function(){
		console.log('hide_btns clicked');
		hideBioFromBtn($(this));
		switchButtonVisability($(this));
	})
}

function showBioFromBtn($btn){
	console.log('running showBioFromBtn');
	// console.log($btn);
	// console.log($btn.parent());
	// console.log($btn.parent().first_child());
	// console.log($btn.parent().children(".bio"));
	$btn.parent().children(".bio").show();
}
function hideBioFromBtn($btn){
	console.log('running hideBioFromBtn');
	// console.log($btn.parent().children(".bio"));
	$btn.parent().children(".bio").hide();
};
function switchButtonVisability($btn){
	console.log('running switchButtonVisability');
	$btn.parent().children(".show, .hide").show();
	// $btn.parent().children(".hide").show();
	$btn.hide();
}

