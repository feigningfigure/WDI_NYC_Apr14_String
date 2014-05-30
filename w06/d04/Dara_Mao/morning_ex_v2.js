var GBP_USD_RATIO = 1.6752;
var CURRENCY_PRECISION = 2;

// Javascript's Object ==>its version of HASH
var CURRENCY_CONVERSION_MAP = {
  "dollars": {
    "pounds": dollarsToPounds
  },
  "pounds":{
    "dollars": poundsToDollars
  }
};

// anonymous function
function(dollars){ return dollars / GBP_USD_RATIO;}

function dollarsToPounds(){
  return dollars / GBP_USD_RATIO;
}

function poundsToDollars(){
  return pounds * GBP_USD_RATIO;
}

console.log(dollarsToPounds(5));
console.log(poundsToDollars(10));

function currencyConverter(from, to, amount){
  // Explicitly declare a variable what I'm about to use
  var result;

  var converter = CURRENCY_CONVERSION_MAP[from][to];
    result = converter(amount);
    return result.toFixed(CURRENCY_PRECISION);

  // if (from === "dollars" && to === "pounds"){
  //     result =  dollarsToPounds(amount);
  //   }
  //   else{
  //     result =  poundsToDollars(amount);
  //   }
  //   return result.toFixed(CURRENCY_PRECISION);
}

console.log(currencyConverter("dollars","pounds", "5"));
console.log(currencyConverter("pounds", "dollars", "10"));

function Person (name){
  var ssn = 3425324;

  this.name = name;
  this.favorite_color = "taupe";
  this.sayHi = function(){
    console.log("Hi");
    console.log("you seem friendly". + ssn)
  }
}

friend  = new Person ("bozo");

friend.sayHi();

console.log(friend.name);
console.log(friend.ssn);
