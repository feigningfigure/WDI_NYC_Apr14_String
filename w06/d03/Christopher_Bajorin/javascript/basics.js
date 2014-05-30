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

// function callbackMeMaybe(number, callback) {
//   var result = number * 100000;
//   callback(number);
// }

// function notify(number) {
//   console.log("The number is " + number);
// }

// function stuff(number) {
//   console.log("This damn number is " + number);
// }
// callbackMeMaybe(20, notify);



// function randomTime() {
//   var random = Math.floor(Math.random() * 10000);
//   return random;
// }

// function insertString() {
//   console.log("this is a string!");
// }

function stringPrint(string) {
  var delay = Math.floor(Math.random()*10000);
  var interval = setInterval(function() { console.log(string); }, delay);

  var stop = Math.floor(Math.random()*100000);
  setTimeout(function() { clearInterval(interval); console.log("stuff"); }, stop);
}

stringPrint("things")

function countDown(x) {
  var delay = 1000;
  var interval = setInterval(function() {
    if (x > 0) {
      console.log(x);
      x -= 1;
    }
  }, delay)

  var stop = (x+1)*1000;
  setTimeout(function() {
    clearInterval(interval);
    console.log("0!"); }, stop);
}

countDown(12)
