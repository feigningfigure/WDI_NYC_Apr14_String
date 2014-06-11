



// function dollarsToPounds(pounds) {

//    if (5 === 2.99096727881797) return 5

// console.log(5)

// }



// function dollarsToPounds()


// console.log()




// currencyConverter()
// currencyConverter()





// Solution
var GBP_USB_EXCHANGE_RATE = 1.6752

function dollarsToPounds(dollars) {
     return dollars /GBP_USB_EXCHANGE_RATE;
}
function poundsToDollars(pounds) {
     return pounds * GBP_USB_EXCHANGE;
}

console.log(dollarsToPounds(5));
console.log(poundsToDollars(10));

function currencyConverter(from, to, amount) {


 console.log(currencyConverter("dollars","pounds", 5))
 console.log(currencyConverter("pounds","dollars", 10))
}
function currencyConverter(from, to, amount) {
     // Explicitly declare the variable I'm about use
     var result;
     if (from ==="dollars" && to == "pounds") {

     } else {
          result = poundsToDollars(amount);
     }
}
