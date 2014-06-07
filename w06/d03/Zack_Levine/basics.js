var myStuff = [
"cigs",
"kholer toilet",
"evion water"
];

for (var i = 0; i < myStuff.length; i++) {
var item = myStuff[i];
console.log(item);
}

console.log("\nNow with a forEach():");

myStuff.forEach(function(item) {
console.log(item);
});

var viewCreaturez = function(item) {
console.log("peep" + item);
};

console.log("\nFigure out age and stuff");
var myAge = figureOutAge(50,100);
console.log(myAge);

function figureOutAge(starting, years) {
	return starting + years;}

console.log("\nFigure out fake ass age");
// javascript you manually have to return functions
function fakeAge(starting,years) { 
starting + years;}

var fakeAge = fakeAge(50,100);
console.log(fakeAge);
