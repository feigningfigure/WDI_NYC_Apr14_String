console.log("Hello, world!");

console.log(1 + 1);

console.log("1" + "1");

// console.log(1.class);

// $ node basics.js

// var myName = "Chris";

// var myFavoriteNumber = 500;

// if (myFavoriteNumber < 1000){
//   console.log("Your fave number is weaksauce");
  // var myArray = [5, 7, 10 ];
// } else {
//   console.log("Rad.");
// }

console.log("Eh?");

var myArray = [
  "platypus",
  "pterodactyl",
  "aardvark",
  "dragon"
]

// i++, i = i+1

// start ; end ; step
for (var i = 0; i < myArray.length; i++){
  var item = myArray[i];
  console.log(item);
}


console.log("\nNow with forEach():");
// In this case, even though "item" appears as the
// argument to a inline function, the name is irrevelevant to javascript. It's just like a ruby block placeholder.
myArray.forEach(function(item) {
  console.log(item);
});

// Same as above: declared a variable and put it inside of function. Functionally identical to .each.
// INLINE FUNCTIONS:
// - Are expressions, so they require semicolons
// - Are used in most places where ruby blocks would be
var viewFantasticCreature = function(item){
  console.log("Wow! Observe that amazing " + item);
}

var otherCreatures = ["dog", "cat"];

myArray.forEach(viewFantasticCreature)

// NAMED FUNCTIONS:
// - Are statements, so they do not require semicolons
// - Are used in most places ruby methods would be
function doSomethingCool() {
  console.log("This isn't very cool, to be honest.");
}


// NO implicit returns in JS
function calculateAgeButNotReally(starting, years){
  starting + years
  return
}

var myAge = calculateAgeButNotReally(50, 100);

console.log(myAge);


function calculateAge(starting, years){
  return starting + years
}

var myActualAge = calculateAge(50, 100);
console.log(myActualAge);







