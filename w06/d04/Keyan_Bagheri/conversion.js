// "Magic constant"
var GBP_USD_RATIO = 1.6752
var EUR_USD_RATIO = 1.3626
var CURRENCY_PRECISION = 2

getpounded = function dollarsToPounds(dollar) {
  return dollar / RATIO;
}

getdollarerd = function poundsToDollars(pound) {
  return pound * RATIO;
}

var CURRENCY_CONVERSION_MAP = {
  "dollars": {
    "pounds": dollarsToPounds
  },
  "pounds" {
    "dollars": poundsToDollars
  }
}

conversionkit = function currencyConverter(inCurrency,outCurrency,amount) {
  var result
  if (inCurrency === "dollar" && outCurrency === "pound") {
    result = getpounded(amount);
  } else {
    result = getdollarerd(amount);
  };
    console.log("Converted from " + inCurrency + " (" + amount + ") to " + outCurrency + " (" + result.toFixed(2) + ").");
    return result
};
