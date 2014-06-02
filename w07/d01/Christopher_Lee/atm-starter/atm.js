// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts


console.log('feed me javascripts')
$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
$("#checking_deposit_button").click(function(){
    var deposit_value = parseFloat($("#checking_deposit_input").val());
    // parseFloat($("#checking_deposit_input").val());
    var current_value = parseFloat($('#balance1').text().replace( /^\D+/g, ''));
    var checking_balance = deposit(deposit_value, current_value);

    $('#balance1').text(checking_balance);

    $("#checking_deposit_input").val('');
  });


  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.


});

function deposit(amount, current_value){
  current_value += amount;
  return "$" + current_value.toFixed(2);
}


function withdrawFunds(amount, primary, secondary)
{

}

function updateDisplay()
{

}

// this is how its done $('#balance1').text('$250');
//1) get input: deposit
//2) run existing value through function with how much they want to deposit
//3) return result with $('#balance1').text('$250');


// Take these two, jam them into deposit, and return final amount to #balance1


//what you need to update the value of
// $('#balance1')
// use +=

// seems like you need to be able to get ahold of whatever this is
// <input type="text" placeholder="enter an amount" />
