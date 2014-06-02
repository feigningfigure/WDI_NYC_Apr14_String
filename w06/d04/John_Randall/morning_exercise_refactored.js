// // "Magic Constant"
// var GBP_USD_EXCHANGE_RATE = 1.6752;
// var EUR_USD_EXCHANGE_RATE = 1.3626;
// var CURRENCY_PRECISION = 2;

// // Can we do this in a more data-driven way?
// var CURRENCY_CONVERSION_MAP = {
//   "dollars": {
//     "pounds": function(dollars) { return dollars / GBP_USD_EXCHANGE_RATE; },
//     "euros": function(dollars) { return dollars / EUR_USD_EXCHANGE_RATE; }
//   },
//   "pounds": {
//     "dollars": function(pounds) { return pounds * GBP_USD_EXCHANGE_RATE; }
//   },
//   "euros": {
//     "dollars": function(euros) { return euros * EUR_USD_EXCHANGE_RATE; }
//   }
// };


// function currencyConverter(from, to, amount) {
//   // Explicityly declare a variable I'm about to use
//   var result;

//   var converter = CURRENCY_CONVERSION_MAP[from][to];

//   result = converter(amount);

//   return result.toFixed(CURRENCY_PRECISION);
// }