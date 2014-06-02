
function dollarsToPounds(dollar_amount){
 return dollar_amount / 1.6745
}

function poundsToDollars(pound_amount){
 return pound_amount * 1.6745
}

function currencyConverter(currency_1, currency_2, amount){
  if(currency_1 === "dollars"){
    return Math.round((amount / 1.6745)* 100) / 100
    //return amount / 1.6745
  }
  else{
    return Math.round((amount * 1.6745)* 100) / 100
   // return amount * 1.6745
  }
}

