// var prompt = require('/usr/local/lib/node_modules/prompt')

/////////////// MINE ////////////////////

// function dollarsToPounds(dollars) {
// var pounds = dollars * 0.6;
// return pounds;
// }

// function poundsToDollars(pounds) {
//   var dollars = pounds * 1.67;
//   return dollars;
// }

// function currencyConverter(currencyFrom, currencyTo, amount) {
//   if (currencyFrom === "dollars" && currencyTo === "pounds") {
//     var money = dollarsToPounds(amount);
//     console.log("£ " + money.toFixed(2));
//   }
//   else if (currencyFrom === "pounds" && currencyTo === "dollars") {
//     var money = poundsToDollars(amount);
//     console.log("$ " + money.toFixed(2));
//   }
  // else if (currencyFrom === "CAD") {
//     console.log("GO BACK TO CANADA!");
//   }
//   else {
//     console.log("Sorry, I am unable to do that transaction");
//   }
// }

// currencyConverter("dollars", "pounds", 10);

// currencyConverter("pounds", "dollars", 10);

// currencyConverter("CAD", "dollars", 100);



//////////////// MAX /////////////////////
// with added currencies

// these are "magic" variables that will be used within functions
// they are for using multiple times or to indicate method functionality

// var


var GBP_USD_EXCHANGE_RATE = 1.6752;
var EUR_USD_EXCHANGE_RATE = 1.3626;
var CURRENCY_PRECISION = 2;

var CURRENCY_CONVERSION_MAP = {
  "dollars": {
    "pounds": function dollarsToPounds(dollars) {return dollars / GBP_USD_EXCHANGE_RATE;},
    "euros": function dollarsToEuros(dollars) {return dollars / EUR_USD_EXCHANGE_RATE;}
    },
    "pounds": {
      "dollars": function poundsToDollars(pounds) {return pounds * GBP_USD_EXCHANGE_RATE;}
    },
    "euros": {
      "dollars": function eurosToDollars(euros) {return euros * EUR_USD_EXCHANGE_RATE;}
    }
}






// console.log(dollarsToPounds(5));
// console.log(poundsToDollars(10));

function currencyConverter(from, to, amount) {

//////// original without map /////////
  //var result;
  // if (from === "dollars") {
  //   result = dollarsToPounds(amount);
  // } else {
  //   result = poundsToDollars(amount);
  // }
  // return result.toFixed(2);

  var result;
  var converter = CURRENCY_CONVERSION_MAP[from][to];
  result = converter(amount);
  return result.toFixed(CURRENCY_PRECISION);
}

console.log(currencyConverter("dollars", "pounds", 5));
console.log(currencyConverter("pounds", "dollars", 5));

var name = function Person(name) {
  return name;
}
