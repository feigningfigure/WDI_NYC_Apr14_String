// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
  $("#checking_deposit").click(function(){
    // console.log("HI!");
    var checkingBalance = parseFloat($("#balance1").text().trim().replace('$', ''));
    var depositAmount = parseFloat($("#checking_text").val());
    var newBalance = deposit(depositAmount, checkingBalance);
    $("#balance1").text(newBalance);
    $("#checking_text").val('');
  });

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.

 $("#savings_deposit").click(function(){
    var savingsBalance = parseFloat($("#balance2").text().trim().replace('$', ''));
    var depositAmount = parseFloat($("#savings_text").val());
    var newBalance = deposit(depositAmount, savingsBalance);
    $("#balance2").text(newBalance);
    $("#savings_text").val('');
  });


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.

  $("#checking_withdrawal").click(function(){
    // console.log("HI!");
    var checkingBalance = parseFloat($("#balance1").text().trim().replace('$', ''));
    var savingsBalance = parseFloat($("#balance2").text().trim().replace('$', ''));
    var withdrawalAmount = parseFloat($("#checking_text").val());
    var balancesArray = []
    balancesArray = withdrawFunds(withdrawalAmount, checkingBalance, savingsBalance);
    if (balancesArray[1] < 0){
      alert("Balance too low!");
    }
    else {
      $("#balance1").text('$' + balancesArray[0].toFixed(2));
      $("#balance2").text('$' + balancesArray[1].toFixed(2));
      $("#checking_text").val('');
    }
  });



  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.

  $("#savings_withdrawal").click(function(){
    // console.log("HI!");
    var checkingBalance = parseFloat($("#balance1").text().trim().replace('$', ''));
    var savingsBalance = parseFloat($("#balance2").text().trim().replace('$', ''));
    var withdrawalAmount = parseFloat($("#savings_text").val());
    var balancesArray = []
    balancesArray = withdrawFunds(withdrawalAmount, savingsBalance, checkingBalance);

    if (balancesArray[1] < 0){
      alert("Balance too low!");
    }
    else {
      $("#balance2").text('$' + balancesArray[0].toFixed(2));
      $("#balance1").text('$' + balancesArray[1].toFixed(2));
      $("#savings_text").val('');
    }
  });

});



function deposit(amount, balance)
{
  balance += amount;
  return ('$' + balance.toFixed(2)).toString();
}

function withdrawFunds(amount, primary, secondary){
  array = []
  if (amount > primary) {
    secondary = secondary - (amount - primary);
    primary = 0;
    array = [primary, secondary];
    return array;
  }
  else {
    primary = primary - amount;
    array = [primary, secondary];
    return array;
  }

}
