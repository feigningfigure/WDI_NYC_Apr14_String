// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts


console.log('feed me javascripts')

$(document).ready(function(){
  noFundAlert($('#balance1'))
  noFundAlert($('#balance2'))
  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
$("#checking_deposit_button").click(function(){
    var deposit_value = parseFloat($("#checking_input").val());
    // parseFloat($("#checking_deposit_input").val());
    var current_value = parseFloat($('#balance1').text().replace( /^\D+/g, ''));
    var checking_balance = deposit(deposit_value, current_value);

   if(validInput($("#checking_input"))) {
          alert("Please enter a valid amount");
    }else{
    $('#balance1').text(checking_balance);

    $("#checking_input").val('');

    noFundAlert($('#balance1'))
    }
  });


  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.

$("#savings_deposit_button").click(function(){
    var deposit_value = parseFloat($("#savings_input").val());
    // parseFloat($("#checking_deposit_input").val());
    var current_value = parseFloat($('#balance2').text().replace( /^\D+/g, ''));
    var savings_balance = deposit(deposit_value, current_value);

    if(validInput($("#savings_input"))) {
          alert("Please enter a valid amount");
    }else{
    $('#balance2').text(savings_balance);

    $("#savings_input").val('');

    noFundAlert($('#balance2'))
    }
  });


  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.

$("#checking_withdraw_button").click(function(){
    var withdraw_value = parseFloat($("#checking_input").val());
    // parseFloat($("#checking_deposit_input").val());
    var current_value = parseFloat($('#balance1').text().replace( /^\D+/g, ''));
    var checking_balance = withdrawFunds(withdraw_value, current_value);


    if(validInput($("#checking_input"))) {
          alert("Please enter a valid amount");
    }else{
    if (balanceValidate(current_value, withdraw_value)){
      $('#balance1').text(checking_balance);
    }else if( parseFloat($('#balance2').text().replace( /^\D+/g, '')) >= Math.abs(current_value - withdraw_value) ){
      console.log("went through");
      overdraftProtection($('#balance2'), withdraw_value, $('#balance1'))
    } else{
      alert("You do not have sufficient funds!");
    }

    $("#checking_input").val('');

    noFundAlert($('#balance1'))
    }
  });

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.

$("#savings_withdraw_button").click(function(){
    var withdraw_value = parseFloat($("#savings_input").val());
    // parseFloat($("#checking_deposit_input").val());
    var current_value = parseFloat($('#balance2').text().replace( /^\D+/g, ''));
    var savings_balance = withdrawFunds(withdraw_value, current_value);

    if(validInput($("#savings_input"))) {
          alert("Please enter a valid amount");
    }else{
    if (balanceValidate(current_value, withdraw_value)){
      $('#balance2').text(savings_balance);
    }else if( parseFloat($('#balance1').text().replace( /^\D+/g, '')) >= Math.abs(current_value - withdraw_value) ){
      console.log("went through");
      overdraftProtection($('#balance1'), withdraw_value, $('#balance2'))
    } else{
      alert("You do not have sufficient funds!");
    }

    $("#savings_input").val('');

    noFundAlert($('#balance2'))
    }
  });


});

function deposit(amount, current_value){
  current_value += amount;
  return "$" + current_value.toFixed(2);
}

// function withdrawFunds(amount, primary, secondary)
function withdrawFunds(amount, primary)
{
  primary -= amount
  return "$" + primary.toFixed(2);
}

function balanceValidate(current_value, withdraw_value){
  if(withdraw_value > current_value){
    return false
  } else{
    return true
  }
}

function updateDisplay()
{

}

// Math.abs(parseFloat($('#balance2').text().replace( /^\D+/g, '') - 25);

function validInput(input){
     if(!$.trim(input.val()).length) {
        return true
     }
}


function overdraftProtection(other_account, withdraw_amount, current_account){
  var overdraft_amount = Math.abs(parseFloat(current_account.text().replace( /^\D+/g, '')) - withdraw_amount);
  console.log(overdraft_amount);
  // if(parseFloat(other_account.text().replace( /^\D+/g, '')) >= overdraft_amount){
    // take money away from other account
    other_account.text(withdrawFunds(overdraft_amount, parseFloat(other_account.text().replace( /^\D+/g, '')) ));
    // reduce current account to 0
    noFundAlert(other_account);
    current_account.text('$0');
}


function noFundAlert(balance){
    if(parseFloat(balance.text().replace( /^\D+/g, '')) <= 0){
       balance.css("background-color","red");
    }else{
      balance.css("background-color","white");
    }
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

// function accountEmpty(balance_1, balance_2){
//   if(balance1)
// }


// $('#balance1')

// $('#balance1').css("background-color","red")


