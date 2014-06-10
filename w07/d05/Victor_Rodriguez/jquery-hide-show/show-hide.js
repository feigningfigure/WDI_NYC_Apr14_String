$("hide-show").children().show();

function addEventListeners(){
$(".show").click(finction(){
  $(this).parent().find('.bio')slideToggle();
});

$(.hide).hide(1000);

$("hide-show").show();
