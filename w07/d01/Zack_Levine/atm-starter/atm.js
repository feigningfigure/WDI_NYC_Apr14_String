$(document).ready(function(){

    $('#deposit-button-checking').click(function(){
        //get ready to accept the actual value the person put in and set it to userInput
        var userInput = $('#checking-rpn-money');
        console.log(userInput);
        var addedNumbersChecking = parseInt(userInput.val()) + 5;
        console.log(addedNumbersChecking)
		var addedToBalance = addedNumbersChecking + currentBalance;

        $('#balance1').append(addedNumbersChecking);

    //sophie
    //$("#checking_deposit").click(function(){
    //  var $input1 = parseInt($("#checking_input").val());
    //  var $input2 = parseInt($("#balance1").html());
    //    console.log($input1 + $input2);
    //  });
    //
    // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

    // Create a click event that is raised when the user clicks on the "checkingDeposit" element.


    // Create a click event that is raised when the user clicks on the "savingsDeposit" element.


    // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.


    // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.

    });

});
function withdrawFunds(amount, primary, secondary)
{

}

function updateDisplay()
{

}
