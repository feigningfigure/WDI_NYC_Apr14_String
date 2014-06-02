var GBP_USD_EXC_RATE = 1.6752;
var CURRENCY_PRECISION = 2;
var CURRENCY_CONVERSION_MAP = {
	"dollars": {
		"pounds": dollarToPound
	},
	"pounds": {
		"dollars": poundToDollar
	}
}

function dollarToPound(dollar){
	// don't return a var just return the value
	return dollar / GBP_USD_EXC_RATE;
}

function poundToDollar(pound){
	return pound * GBP_USD_EXC_RATE;
}

function currencyConverter(currency_from, currency_to, amount){
	var result;
	// don't need an if else statemet anymore with the CURRENCY_CONVERSION_MAP
	// if(currency_from === "pounds"){
	// 	result = poundToDollar(amount);
	// }else{
	// 	result = dollarToPound(amount);
	// }

	// refactored version with CURRENCY_CONVERSION_MAP
	var converter = CURRENCY_CONVERSION_MAP[currency_from][currency_to];

	result = converter(amount);

	return result.toFixed(CURRENCY_PRECISION);
}


currencyConverter("pounds", "dollars", 1)

currencyConverter("dollars", "pounds", 1)