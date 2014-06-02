function dollarsToPounds(dollar){
  var pound = dollar*0.6;
  console.log(pound);
  return dollarsToPounds
}

function poundsToDollars(pound){
  var dollar = pound/0.6;
  console.log(dollar);
  return poundsToDollars
}

function currencyConverter(start, end, amount){
  if (start == "dollars"){
    var converted = dollarsToPounds(amount);
    var output = converted.toFixed(2);
  } else {
    // var end = amount/0.6;
    var converted = poundsToDollars(amount);
    var output = converted.toFixed(2);
  }
  console.log(output);
}


// ==============================================

