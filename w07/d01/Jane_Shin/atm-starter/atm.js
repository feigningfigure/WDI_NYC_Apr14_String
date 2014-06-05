// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts



$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.

  var $checkRaw = $("#balance1");
  var checkBalance = Number($checkRaw.text().substr(1));
  var $checkAmount = $("#checking_amount");
  // var checkValue = Number($checkAmount.val());
  var $saveRaw = $("#balance2");
  var saveBalance = Number($saveRaw.text().substr(1));
  var $saveAmount = $("#saving_amount");
  // var checkValue = Number($checkAmount.val());

  if (checkBalance === 0) {
    $("#balance1").css('background-color','red');
  } 
  if (saveBalance === 0) {
    $("#balance2").css('background-color','red');
  } 

  $("#make_checking_deposit").on('click', function() {
		checkBalance += Number($checkAmount.val());
  	updateDisplay($checkRaw, checkBalance);
  });

  // changed order of checking withdraw

  $("#make_checking_withdrawal").on('click', function() {
    // if (Number($checkAmount.val()) < checkBalance) { 	

      if (checkBalance - $checkAmount.val() >= 0) {
  	  	withdrawFunds($checkRaw, $checkAmount);	
  			checkBalance -= $checkAmount.val();
  	  	updateDisplay($checkRaw, checkBalance);

      // } else if (checkBalance+saveBalance >=  $checkAmount.val()) {
      //   withdrawFunds($checkAmount, $checkRaw, $saveRaw); 
      //   // checkBalance -= $checkAmount.val();
      //   (checkBalance+saveBalance) -=  $checkAmount.val();
      //   updateDisplay($checkRaw, checkBalance);


    	// } else {
    	//  	alert ("You don't have enough funds to withdraw.");
    	// }

    } else if ((checkBalance + saveBalance) >= Number($checkAmount.val()) {
      withdrawFunds($checkAmount, $checkRaw, $saveRaw); 
      saveBalance -= $checkAmount.val();
      updateDisplay($checkRaw, checkBalance);

    } else {
      alert ("come back when you get paid");
    }

  });

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
  
  $("#make_saving_deposit").on('click', function() {

    saveBalance += Number($saveAmount.val());
    updateDisplay($saveRaw, saveBalance);

  });

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.

 $("#make_saving_withdrawal").on('click', function() {
  if (saveBalance - $saveAmount.val() >= 0) {
      withdrawFunds($saveRaw, $saveAmount); 
      saveBalance -= $saveAmount.val();
      updateDisplay($saveRaw, saveBalance);
   } else {
      alert ("You don't have enough funds to withdraw.");
    }
  });
 
});



function updateDisplay(raw_dollars, balance) {
  // var balance = Number(raw_dollars.text().substr(1));  
  // balance += Number(depositAmount.val());
  raw_dollars.text('$' + balance);
  if (balance === 0) {
    raw_dollars.css('background-color','red');
  } else {
    raw_dollars.css('background-color','#E3E3E3');    
  }
};



function withdrawFunds(amount, primary_account, secondary_account) {
	var balance = Number(primary_account.text().substr(1));
    balance -= Number(amount.val());

  if (balance < amount.val()) {
    var secondary_balance = Number(secondary_account.text().substr(1));
    balance = secondary_balance - balance;
    updateDisplay(primary_account, 0);
    updateDisplay(secondary_account, balance);
  } else {
    updateDisplay(primary_account, balance)
  }

  


  // if (balance >= amount) {
	 // balance -= Number(amount.val());
  // } else {
  //   var secondary_balance = Number(secondary_account.text().substr(1));
  //   balance -= Number(amount.val());
  // }
	// return balance;
};



