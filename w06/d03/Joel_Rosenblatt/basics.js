// console.log("Hello World");

// var myName = "Joel";

var myArray = [
  "something",
  "something else",
  "another thing",
  "last thing"
];

// start ; end ; step
for (var i = 0; i < myArray.length; i++) {
  var item = myArray[i];
}

//now with forEach
myArray.forEach(function(item) {
  console.log(item);
});

//now with a function in a variable. Inline function is similar to Ruby blocks
var someFunction = function(item) {
  console.log("Something" + item);
};

myArray.forEach(someFunction);

//other function syntax. Accesible in more scopes.Similar to Ruby. Are statements so they don't require semi-colons.
function otherFunction() {
  console.log("Something");
}

//Ex
function machinethatgoesPing(string) {
  function blip() {console.log(string);}
  var interval = setInterval(blip, 1000);
  setTimeout(function( ) { clearInterval(interval); console.log("Nobody Expects The Spanish Inquisition!") }, 10000);
}

machinethatgoesPing("ping")
