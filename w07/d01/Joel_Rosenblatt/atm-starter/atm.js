// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){

  var checkingsInput = $("#checkings_input");
  var savingsInput = $("#savings_input");

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
  $("#checkingDeposit").click(function(){

    var sum = parseInt($('#balance1').html());
    if(!isNaN(checkingsInput.val()) && checkingsInput.val()!=0 && checkingsInput.val()>0) {
          sum += parseFloat(checkingsInput.val());
        }
    else {alert("Not a valid value!")}
    $('#balance1').html(sum);
    checkingsInput.val('');
  });

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
  $("#savingsDeposit").click(function(){


    var sum = parseInt($('#balance2').html());
    if(!isNaN(savingsInput.val()) && savingsInput.val()!=0 && savingsInput.val()>0) {
          sum += parseFloat(savingsInput.val());
        }
    else {alert("Not a valid value!")}
    $('#balance2').html(sum);
    savingsInput.val('');
  });

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
  $("#checkingWith").click(function(){

    var sum = parseInt($('#balance1').html());
    if (checkingsInput.val() > $('#balance1').html()){
      alert("Insufficient funds!");
    }
    else if(!isNaN(checkingsInput.val()) && checkingsInput.val()!=0 && checkingsInput.val()>0) {
          sum -= parseFloat(checkingsInput.val());
        }
    else {alert("Not a valid value!")}
    $('#balance1').html(sum);
    checkingsInput.val('');
  });

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
$("#savingsWith").click(function(){

    var sum = parseInt($('#balance2').html());
    if (savingsInput.val() > $('#balance2').html()){
      alert("Insufficient funds!");
    }
    else if(!isNaN(savingsInput.val()) && savingsInput.val()!=0 && savingsInput.val()>0) {
          sum -= parseFloat(savingsInput.val());
        }
    else {alert("Not a valid value!")}
    $('#balance2').html(sum);
    savingsInput.val('');
  });



});

function withdrawFunds(amount, primary, secondary)
{

}

function updateDisplay()
{

}
