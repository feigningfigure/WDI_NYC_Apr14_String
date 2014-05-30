// GBP-USD 1.6745 Price of 1 GBP in USD


function dollarsToPounds(dollars){
	var result = dollars/1.6745;
	var to_pound_result = result.toFixed(2) + " pounds";
	return to_pound_result
}


function poundsToDollars(pounds){
	var result = pounds*1.6745;
	var to_dollar_result = result.toFixed(2) + " dollars";
	return to_dollar_result
}

console.log(dollarsToPounds(5));
console.log(poundsToDollars(10));


function currencyConverter(from, to, amount){
	var result;

	if(from === "dollars" && to === "pounds") { 
		result = dollarsToPounds(amount); 
	} else if (from === "pounds" && to === "dollars") {
		result = poundsToDollars(amount);
	} else {
		console.log("Cannot perform the requested conversion");
		result = null;
	}
	
	return result
}

console.log(currencyConverter("dollars", "pounds", 20));