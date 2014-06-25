/* See:
REGULAR EXPRESSIONS
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions

REPLACE method
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/replace
*/

//PART 1

var regexFlip = /(\w+)\s(\w+)/;
var name = "Peter Parker";
var newName = name.replace(regexFlip, "$2, $1");
console.log(newName);


// PART 2

var regexFlip = /([\w-' ]{1,2})\s([\w-' ]+){1,2}/;
var name = "Eva-Lotte O'Malley";
var newName = name.replace(regexFlip, "$2, $1");
console.log(newName);


// PART 3

// Instrux: Using regex, capitalize the first letter of this sentence: "i should be capitalized."

// SEE:  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/replace

var initialCap = "i should be capitalized."
var capitalized = initialCap.replace(/^[a-z]/, function(cap){ return cap.toUpperCase() });
console.log(capitalized);


