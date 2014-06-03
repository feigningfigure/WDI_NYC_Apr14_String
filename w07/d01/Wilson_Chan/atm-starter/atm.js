// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
// The load event fires at the end of the document loading process.
// At this point, all of the objects in the document are in the DOM,
// and all the images and sub-frames have finished loading.

// Set your initial balances for the savings and checking accounts
// var balance1 = 0;
// var balance2 = 0;
var balance = 1000

$(document).ready(function(){

  // SEE:  https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick

  // Create a click event that is raised when the user clicks on the "checkingDeposit" element.
$('#checking-deposit-button').click(function(){
    // var input = $("#checking-input");
    // console.log(input);

    // $('.balance').append(input.val());

  var $input1 = parseInt($("#checking-input").val());
  var $input2 = parseInt($("#balance1").text().replace(/[^0-9\.]/g,''));
    $("#balance1").text("$" + ($input1 + $input2));
  });

});

  // Create a click event that is raised when the user clicks on the "savingsDeposit" element.
$('#checking-withdraw-button').click(function(){

  // var $input1 = parseInt($("#checking-input").val());
  // var $input2 = parseInt($("#balance1").text().replace(/[^0-9\.]/g,''));
  //   $("#balance1").text("$" + ($input1 - $input2));
  // });

});

  // Create a click event that is raised when the user clicks on the "checkingWithdraw" element.
$('#savings-deposit-button').click(function(){
    var input = $("#checking-input");

      // Clears the input form
  //   input.val('');
  // });

});

  // Create a click event that is raised when the user clicks on the "savingsWithdraw" element.
$('#savings-withdraw-button').click(function(){
alert("hi there");
      // Clears the input form
  //   input.val('');
  // });

});



function withdrawFunds(amount, primary, secondary)
{

}

function updateDisplay()
{

}
