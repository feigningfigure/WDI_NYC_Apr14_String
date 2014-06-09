$(function(){
	console.log("DOM loaded, running js")
	addEventListeners();
});


function addEventListeners(){
	console.log("running addEventListeners")
	var $show_btns = $('a.show')
	var $hide_btns = $('a.hide')

	$show_btns.click(function(){
		console.log('show_btns clicked');
		showObjFromBtn($(this));
	})

	$hide_btns.click(function(){
		console.log('hide_btns clicked');
		hideObjFromBtn($(this));
	})
}

function showObjFromBtn($btn){
	console.log('running showObjFromBtn');
	// console.log($btn);
	// console.log($btn.parent());
	// console.log($btn.parent().first_child());
	
	$btn.parent().show();
}
function hideObjFromBtn($btn){
	console.log('running hideObjFromBtn');
	// console.log($btn);
	// $btn.parent().hide();
	// console.log($btn.parent());
	// console.log($btn.parent().contents()[0]);
	$btn.parent().contents()[0].hide();
};

