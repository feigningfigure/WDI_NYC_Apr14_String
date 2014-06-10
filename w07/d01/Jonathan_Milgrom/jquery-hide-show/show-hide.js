// node.childNodes
// node.firstChild
// node.lastChild
// node.parentNode
// node.nextSibling
// node.previousSibling

// $(document).ready(function() {
// 	console.log("hello");
// 	clickster($(".show").first());
// 	$(".show").click(function() {
// 		console.log("asshole");
// 	});

// 	function clickster(button) {
// 		console.log("called");
// 		button.click(function () {
		
// 			console.log("inside click");
// 			console.log($(this));
// 		});
// 	}
// });

$(document).ready(function() {
	$(".hide").hide();
	$(".bio").hide();

	addEventListeners();

});

// function show(callingLink) {
// 	callingLink.hide();
// 	callingLink.next().show;
// 	callingLink.next().next().slideToggle(200);
// }

// function hide(callingLink) {
// 	callingLink.hide();
// 	callingLink.prev().show;
// 	callingLink.next().slideToggle(200);
// }

function addEventListeners(){
  $(".show").click(function(){
     $(this).hide();
     console.log("hello")
     $(this).next().show();
     $(this).parent().find('.bio').slideToggle(800);
  });

  $(".hide").click(function(){
     $(this).parent().find('.bio').slideToggle(100);
     $(this).hide();
     $(".show").show();
  });
}
