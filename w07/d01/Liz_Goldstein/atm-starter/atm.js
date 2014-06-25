// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){

var checking = $("#balance1");

$("#balance1_deposit").click(function() {
  var text = $("#balance1_text_field").val();
  $("#balance1").html(text);
});

// $(selector).val(function(index,currentvalue))
// $('#example3b').val( $('#example3a').val() )"





//   <form>
// 2
//     Type something in here:
// 3
//     <input id="example3a" type="text" />
// 4
//     <input type="button" value="Set Value" onclick="$('#example3b').val( $('#example3a').val() )" />
// 5
//     <input id="example3b" type="text" />
// 6
// </form>


 // $( this ).val(function( i, val ) {
 //    return val.toUpperCase();

// $( "button" ).click(function() {
//   var text = $( this ).text();
//   $( "input" ).val( text );
// });

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick



  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.


  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.


});

function withdrawFunds(amount, primary, secondary)
{

}

function updateDisplay()
{

}
