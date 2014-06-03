console.log("Hello, world!");

console.log(1 + 1);

console.log("1" + "1");

// console.log(1.class);

var myFavNumber = 500;

if (myFavNumber < 1000) {
  console.log("Dude your fave number is weaksauce.");
}

var myArray = [
    "platypus",
    "pterodactyl",
    "aardvark",
    "dragon"
];

for (var i = 0; i < myArray.length; i++) {
    var item = myArray[i];
    console.log(item);
}

myArray.forEach(function(item) {
  console.log(item);
});


console.log("\nNow with a function in a variable:");

var viewFantasticCreature = function(item) {
  console.log("Wow! Observe that amazing " + item);
};

myArray.forEach(viewFantasticCreature)

function doSomethingCool() {
  console.log("This isn't very cool, to be honest.");
};