// // my way
// function addEventListeners(){
// 	$(".show").click(function(){
// 		$('.bio').show();
// 		console.log($('h4').html());
// 	});
// 	$(".hide").click(function(){
// 		$('.bio').hide();
// 	});
// }

// $(document).ready(function() {
// 	addEventListeners();
// });

// chris lee's way
// $(".hide-show").children().hide();

// function addEventListeners(){
// 	$(".show").click(function(){
// 		$(this).parent().find('.bio').slideToggle();
// 	});

// 	$(".hide").click(function(){
// 		$(this).parent().find('.bio').slideToggle();
// 	});
// }

// $(document).ready(function() {
// 	addEventListeners();
// });


// // keri's way
// $(function(){

// 	$('.hide').hide();
// 	$('.bio').hide();

// 	$('a.show').each(function(){
// 		var $thisLink = $(this);
// 		$thisLink.click(function(){
// 			show($thisLink);
// 		});
// 	});

// 	$('a.hide').each(function(){
// 		var $thisLink = $(this);
// 		$thisLink.click(function(){
// 			hide($thisLink);
// 		});
// 	});

// });


// function show(callingLink){
// 	callingLink.hide();
// 	callingLink.next().show();
// 	callingLink.next().next().slideToggle(200);
// }

// function hide(callingLink){
// 	callingLink.hide();
// 	callingLink.prev().show();
// 	callingLink.next().slideToggle(200);
// }


// chris b's way
$(document).ready( function(){
	$('.hide').hide();
	$('.bio').hide();

	$('.show').click(function(){
		$(this).siblings(".bio").slideToggle();
		$(this).siblings("a").toggle();
		$(this).toggle();
	});
	$('.hide').click(function(){
		$(this).siblings(".bio").slideToggle();
		$(this).siblings("a").toggle();
		$(this).toggle();
	});

});


