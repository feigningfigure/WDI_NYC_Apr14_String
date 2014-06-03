var GBP_USD_EXCHANGE_RATE = 1.6752;
var EUR_USD_EXCHANGE_RATE = 1.3626;
var CURRENCY_PRECISION = 2;

// Can we do this in a more data-driven way?
var CURRENCY_CONVERSION_MAP = {
    "dollars": {
        "pounds": dollarsToPounds
    },
    "pounds": {
        "dollars": poundsToDollars
    }
};

function dollarsToPounds(dollars) { return dollars / GBP_USD_EXCHANGE_RATE; }
function poundsToDollars(pounds) { return pounds * GBP_USD_EXCHANGE_RATE; }

function currencyConverter(from, to, amount) {
    // Explicitly declare the variable I'm about to use
    var result;

    var converter = CURRENCY_CONVERSION_MAP[from][to];

    result = converter(amount);

    return result.toFixed(CURRENCY_PRECISION);
}

console.log(currencyConverter("dollars", "pounds", 5));
