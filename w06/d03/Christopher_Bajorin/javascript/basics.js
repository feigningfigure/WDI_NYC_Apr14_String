module.exports.repl.ignoreUndefined = false;
// var hw = console.log("Hello, world!")

// myFavoriteNumber = 900

// if (myFavoriteNumber > 1000) {
//   console.log("Neat");
// } else {
//   console.log("Nope");
// }
// var myArray = [
//   "platypus",
//   "pterodactyl",
//   "aardvark",
//   "dragon"
//   ];
// for (var i = 0; i < myArray.length; i += 1) {
// }

function callbackMeMaybe(number, callback) {
  var result = number * 100000;
  callback(number);
}

function notify(number) {
  console.log("The number is " + number);
}

function stuff(number) {
  console.log("This damn number is " + number);
}
callbackMeMaybe(20, notify);
