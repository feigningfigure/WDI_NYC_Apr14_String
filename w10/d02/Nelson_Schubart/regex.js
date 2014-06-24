
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions

// Part 1 -- Flip a name

var regexFlip = /(\w+)\s(\w+)/;
var name = "Peter Parker";
var newName = name.replace(regexFlip, "$2, $1");
console.log(newName);

// Part 2 -- Create a regex pattern that include an apostropohe or hyphen, eg

// Keyan's attempt

var regexFlip = /(\w+\W+\w+)\s(\w+\W+\w+)/;
var name = "Peter Parker";
var newName = name.replace(regexFlip, "$2, $1");
console.log(newName);

// Keri's attempt

var regexFlip = /([\w-']+)\s([\w-']+)/;
var name = "Peter Parker";
var newName = name.replace(regexFlip, "$2, $1");
console.log(newName);
