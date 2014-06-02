var poundsToDollars = 0.6

function dollarsToPounds(num) {
	var result = num * 0.6;
	console.log(result);
	return result;
}

function poundsToDollars(num) {
	var result = num / 0.6;
	console.log(result);
	return result;
}

function currencyConverter(base, base_num) {
	if (base == "dollars") {
		return dollarsToPounds(base_num);
	} 
	if (base == "pounds") {
		return poundsToDollars(base_num);
	}
}

