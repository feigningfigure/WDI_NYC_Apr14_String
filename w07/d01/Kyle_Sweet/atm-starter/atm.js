// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts
var checking = 0;
var savings = 0; 

$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
  $("#checkingDeposit").click(function(){
    
    var input = $("#checkingValue");

    $("#balance1").html( "$" + input.val() );

    input.val('');

    });


  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.

    $("#savingsDeposit").click(function(){
    
    var input = $("#savingsValue");

    $("#balance2").html( "$" + input.val() );

    input.val('');

    });




  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
    $("#checkingWithdraw").click(function(){
    
    var input = $("#checkingValue");

    $("#balance1").html( "$" + input.val() );

    input.val('');

    });


//   // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.

    $("#savingsWithdraw").click(function(){
    
    var input = $("#savingsValue");

    $("#balance2").html( "$" + input.val() );

    input.val('');

    });
});



function withdrawFunds(amount, primary, secondary){

if ( $("#checkingWithdraw").click ){
  checking =;
} 

else if ($("#savingsWithdraw").click ) {
  // console.log("false");
};


function updateDisplay()
{

}
