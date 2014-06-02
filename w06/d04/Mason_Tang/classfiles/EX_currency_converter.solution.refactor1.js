// Define "Magic Constants"
var GBP_USD_EXCHANGE_RATE = 1.6752;
var EUR_USD_EXCHANGE_RATE = 1.3626;
var CURRENCY_PRECISION = 2;

// Define ANONYMOUS FUNCTIONS which are passed around as data
var CURRENCY_CONVERSION_MAP = {
    "dollars": {
        "pounds": function(dollars) { return dollars / GBP_USD_EXCHANGE_RATE; },
        "euros": function(dollars) { return dollars / EUR_USD_EXCHANGE_RATE; }
    },
    "pounds": {
        "dollars": function(pounds) { return pounds * GBP_USD_EXCHANGE_RATE; }
    },
    "euros": {
        "dollars": function(euros) { return euros * EUR_USD_EXCHANGE_RATE; }
    }
};

// Define a NAMED FUNCTION which we explicitly call by name
function currencyConverter(from, to, amount) {
    // It's javascript convention to DECLARE variables at the top of functions
    // before they are actually DEFINED and used. This way it's easier to keep
    // track of the different scopes.
    var result, converter;

    // - CURRENCY_CONVERSION_MAP is being accessed like a nested Ruby hash.
    // - CURRENCY_CONVERSION_MAP[from] is an object representing all the ways to
    //   convert `from` currency.
    // - CURRENCY_CONVERSION_MAP[from][to] is the anonymous function that converts
    //   `from` currency into `to` currency.
    converter = CURRENCY_CONVERSION_MAP[from][to];
    result = converter(amount);

    // If we didn't use a constant variable here, this line would be completely
    // unclear to anyone unfamiliar with the toFixed() method!
    return result.toFixed(CURRENCY_PRECISION);
}

console.log(currencyConverter("dollars", "pounds", 5));
console.log(currencyConverter("euros", "dollars", 5));
console.log(currencyConverter("pounds", "dollars", 5));
