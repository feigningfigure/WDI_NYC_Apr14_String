// GBP-USD 1.6745 Price of 1 GBP in USD


function dollarsToPounds(dollars){
	var result = dollars*1.6745;
	var toPoundResult = result.toFixed(2) + " pounds";
	console.log(toPoundResult);
	return toPoundResult
}


function poundsToDollars(pounds){
	var result = pounds/1.6745;
	var toDollarResult = result.toFixed(2) + " dollars";
	console.log(toDollarResult);
	return toDollarResult
}


function currencyConverter(from, to, amount){
	if(from == "dollars" && to == "pounds") { 
		var result = dollarsToPounds(amount); 
		return result
	} else {
	if(from == "pounds" && to == "dollars"){
		var result = poundsToDollars(amount);
		return result
	} else {
		console.log("Cannot perform the requested conversion");
		return null
	}
	};
}

currencyConverter("dollars", "pounds", 5)