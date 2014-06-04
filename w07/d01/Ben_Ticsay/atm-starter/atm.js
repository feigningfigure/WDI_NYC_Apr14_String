// STILL REBOUNDING FROM WEEKEND ILLNESS. I WILL SUBMIT A WORKING VERSION THIS WEEK. 


// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts

var balance2 = 0;
var balance1 = 0;
var checkingInput = $('checkingInput')
var savingsInput = $('savingInput')

$(document).ready(function(){

  if(balance1 !== 0){
    $('#balance1').css("background-color", "grey")
  } else {
    $('#balance1').css("background-color", "red")
  }

  if(balance2 !== 0){
    $('#balance2').css("background-color", "grey")
  } else {
    $('#balance2').css("background-color", "red")
  }

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.


$('#checkingDeposit').click(function(){
      var input = $('#checkingInput');
      balance1 += parseInt(input.val());
      input.val('');
      updateCheckingDisplay(balance1)
    })

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
$("#savingsDeposit").click(function(){
   var input = $("#savingsInput");
    balance2 += parseInt(input.val());
    updateSavingsDisplay(balance2);
    input.val('')
   }

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
$("#checkingWithdraw").click(function(){
    var input = $("#checkingInput");
    balance1 -= parseInt(input.val());
    input.val('')
   }

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
$("#savingsWithdraw").click(function(){
    var input = $("#savingsInput");
    balance2 -= parseInt(input.val());
    input.val('')
   }

};

function withdrawFunds(amount, primary, secondary){  
  balance2 = (balance1 + balance2) - amount
  balance1 = 0
  updateCheckingDisplay(balance1);
  updateSavingsDisplay(balance2);
}

function updateCheckingDisplay() {
  $("#balance1").html(balance1);
    if(balance1 !== 0){
    $('#balance1').css("background-color", "grey")} else {
    $('#balance1').css("background-color", "red")
  }
}

function updateSavingsDisplay() {
  $("#balance2").html(balance2);
    if(balance2 !== 0){
    $('#balance2').css("background-color", "grey")
  } else {
    $('#balance2').css("background-color", "red")
  }
}


