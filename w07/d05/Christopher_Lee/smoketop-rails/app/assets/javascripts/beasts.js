
function addEventListeners(){
  $('#beast-form input').on('change', function() {
   //alert($('input[name=diet]:checked', '#beast-form').val());
   var diet = ($('input[name=diet]:checked', '#beast-form').val());
   console.log(diet);
  });
}


$(document).ready(function() {
  addEventListeners();
});
