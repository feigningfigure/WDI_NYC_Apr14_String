

function dollarsToPounds(dollars) {
  var pounds = dollars * 0.5970
  return pounds
  console.log(pounds);
}

function poundsToDollars(pounds) {
  var dollars = pounds * 1.6751
  return dollars
  console.log(dollars);
}

function currencyConverter(curr1, curr2, amt) {
  if (curr1 === "dollars") {
    var dollars = amt * 0.5970
    return dollars
    console.log(dollars);
  } else if (curr1 === "pounds") {
    var pounds = amt * 1.6751
    return pounds
    console.log(pounds);
  } else {
    console.log("enter correct currency");
  }
}


function currencyConverter(curr1, curr2, amt) {
  if (curr1 = "dollars") {
   dollarsToPounds(amt);
  } else if (curr1 = "pounds") {
   poundsToDollars(amt);
  } else {
    console.log("enter correct currency");
  }
}
