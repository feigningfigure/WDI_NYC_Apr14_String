var GBP_USD = 0.59;
var USD_GBP = 1.687;

function dollarsToPounds(usd) {
	return gbp = usd * GBP_USD

}
dollarsToPounds(5)



function poundsToDollars(gbp) {
	return usd = gbp * USD_GBP

}
poundsToDollars(5)


function currencyConverter(from, to, amount) {
	if (from == "usd") {return amount * GBP_USD.toFixed(2)} else {return amount * USD_GBP.toFixed(2)};

}

currencyConverter("usd", "gbp", 5)
currencyConverter("gbp", "usd", 10)