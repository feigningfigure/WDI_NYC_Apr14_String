// Variables in ALL CAPS indicate value that can't be changed
// var USD_GBP_EXCHANGE_RATE = 0.5973
var GBP_USD_EXCHANGE_RATE = 1.6746
var EUR_USD_EXCHANGE_RATE = 1.3626
var CURRENCY_PRECISION = 2;

// Create an object (similar to a hash in JS) to implement multi-currency exchange
// Moving from a procedural approach (if statements) to a more DATA-DRIVEN approach (almost like a flow chart, checking first currency, second, and decide on an outcome)
// Javascript doesn't have classes, only objects

var CURRENCY_CONVERSION_MAP = {
  "dollars": {
    "pounds": dollarsToPounds
  }
  "pounds": {
    "dollars": poundsToDollars
  }
};

function dollarsToPounds(dollars){
  return dollars / GBP_USD_EXCHANGE_RATE;
}

function poundsToDollars(pounds){
  return pounds * GBP_USD_EXCHANGE_RATE;
}

console.log(dollarsToPounds(5));
console.log(poundsToDollars(10));

function currencyConverter(from, to, amount){
  // Explicitly declare variable about to be used
  var result;
  if (from === "dollars" && to === "pounds") {
    result = dollarsToPounds(amount); }
  else {
    result = poundsToDollars(amount); }

  return result.toFixed(CURRENCY_PRECISION);
}


// console.log(currencyConverter("dollars", "pounds", 5));
// console.log(currencyConverter("pounds", "dollars", 10));
