var GBP_USD_EXCHANGE_RATE = 1.6717;
var CURRENCY_PRECISION = 2;

function poundsToDollars(pounds) { return pounds * GBP_USD_EXCHANGE_RATE; }
function dollarsToPounds(dollars) { return dollars / GBP_USD_EXCHANGE_RATE; }

function currencyConverter(from, to, amount) {
        var result, preciseResult;

            if (from === "dollars" && to == "pounds") {
                        result = dollarsToPounds(amount);
                            } else if (from === "pounds" && to == "dollars") {
                                        result = poundsToDollars(amount);
                                            }

                preciseResult = result.toFixed(CURRENCY_PRECISION);

                    return preciseResult;
}

currencyConverter("dollars", "pounds", 5)
