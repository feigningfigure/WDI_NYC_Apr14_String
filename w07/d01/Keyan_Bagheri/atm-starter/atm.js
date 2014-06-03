

$(document).ready(function(){
  noFundAlert($('#balance1'));
  noFundAlert($('#balance2'));
  var currentCheckBalance = $('#balance1');
  var balanceCheckInteger = parseInt(currentCheckBalance.text().replace("$",""), 10);

  var currentSavingsBalance = $('#balance2');
  var balanceSavingsInteger = parseInt(currentSavingsBalance.text().replace("$",""), 10);

  $("#checkDeposit").click( function(){
    var currentCheckBalance = $("#balance1");
    var balanceInteger = parseFloat(currentCheckBalance.text().replace("$",""));
    var enterCheckingAmount = $('#enterAmountChecking');
    var amountInteger = parseFloat(enterCheckingAmount.val());
    depositChecking(balanceInteger,amountInteger);
    $('#enterAmountChecking').val('');
    noFundAlert($('#balance1'));
  });

  $("#checkWithdraw").click( function(){
    var currentCheckBalance = $("#balance1");
    var balanceInteger = parseFloat(currentCheckBalance.text().replace("$",""));
    var currentSavingsBalance = $("#balance2");
    var secondaryInteger = parseFloat(currentSavingsBalance.text().replace("$",""));
    var enterCheckingAmount = $('#enterAmountChecking');
    var amountInteger = parseFloat(enterCheckingAmount.val());
    withdrawChecking(balanceInteger,amountInteger,secondaryInteger);
    $('#enterAmountChecking').val('');
    noFundAlert($('#balance1'));
  });

  $("#savingsDeposit").click( function(){
    var currentSavingsBalance = $("#balance2");
    var balanceInteger = parseFloat(currentSavingsBalance.text().replace("$",""));
    var enterSavingsAmount = $('#enterAmountSavings');
    var amountInteger = parseFloat(enterSavingsAmount.val());
    depositSavings(balanceInteger,amountInteger);
    $('#enterAmountSavings').val('');
    noFundAlert($('#balance2'));
  });

  $("#savingsWithdraw").click( function(){
    var currentSavingsBalance = $("#balance2");
    var balanceInteger = parseFloat(currentSavingsBalance.text().replace("$",""));
    var currentCheckBalance = $("#balance1");
    var secondaryInteger = parseFloat(currentCheckBalance.text().replace("$",""));
    var enterSavingsAmount = $('#enterAmountSavings');
    var amountInteger = parseFloat(enterSavingsAmount.val());
    withdrawSavings(balanceInteger,amountInteger,secondaryInteger);
    $('#enterAmountSavings').val('');
    noFundAlert($('#balance2'));
  });

  function noFundAlert(balance){
    if(parseFloat(balance.text().replace( /^\D+/g, '')) <= 0){
     balance.css("background-color","red");
   }else{
    balance.css("background-color","white");
  }
}

function updateCheckingDisplay(number)
{
  currentCheckBalance.html(('$' + number.toString()));
}

function updateSavingsDisplay(number)
{
  currentSavingsBalance.html(('$' + number.toString()));
}

function depositChecking(account, amount)
{

  var newBalance = account + amount;

  updateCheckingDisplay(newBalance);

}

function withdrawChecking(account, amount, secondary)
{
if (amount > account + secondary) {
  alert("You can not do that")
} else {
  var newBalance = account - amount;
  if (newBalance < 0) {
    var secondaryBalance = secondary + newBalance
    newBalance = 0
  }
}
  updateCheckingDisplay(newBalance);
  updateSavingsDisplay(secondaryBalance)

}

function depositSavings(account, amount)
{

  var newBalance = account + amount;

  updateSavingsDisplay(newBalance);

}

function withdrawSavings(account, amount, secondary)
{
if (amount > account + secondary) {
  alert("You can not do that")
} else {
    var newBalance = account - amount;
  if (newBalance < 0) {
    var secondaryBalance = secondary + newBalance
    newBalance = 0
  }
}
  updateSavingsDisplay(newBalance);
  updateCheckingDisplay(secondaryBalance)

}

});
