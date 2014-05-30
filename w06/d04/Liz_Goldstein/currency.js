// var pounds = function dollarsToPounds(amount) {
//   var pounds = amount/1.67;
//   console.log(amount + " dollars is " + pounds.toFixed(2) + " pounds.");
// };

// var dollars = function poundsToDollars(amount) {
//   var dollars = amount * 1.67;
//   console.log(amount + " pounds is " + dollars.toFixed(2) + " dollars.");
// };

// function currencyConverter(start, amount) {
//   start(amount);
// }


//above works, trying to do it all in one method
function currencyConverter(start, end, amount) {

  if (start === "dollars") {
  var convert = amount / 1.67;
}
  else {
  var convert = amount * 1.67;
}
  console.log(amount + " " + start + " is " + convert.toFixed(2) + " " + end );
}

currencyConverter("dollars", "pounds", 20)
currencyConverter("pounds", "dollars", 20)
