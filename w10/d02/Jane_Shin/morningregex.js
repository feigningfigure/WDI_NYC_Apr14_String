// Part 2 =========
// my solution
// var regexFlip = /(\w+\W\w+)\s(\w+\W\w+)/;
// Keri's solution
var regexFlip = /([\w-']+)\s([\w-'\s]+)/;
// var name = "Eva-Lotte O'Malley";
var name = "Declan Van Welie";
var newName = name.replace(regexFlip, "$2, $1");
console.log(newName);

// Part 1 =========
// Keri's solution
// var regexFlip = /(\w+)\s(\w+)/;
// var name = "Peter Parker";
// var newName = name.replace(regexFlip, "$2, $1");
// console.log(newName);


// // from the documentation
// var re = /(\w+)\s(\w+)/;
// var str = "John Smith";
// var newstr = str.replace(re, "$2, $1");
// console.log(newstr);
// Prints "Smith, John"

// + 	Matches the preceding character 1 or more times.
// \s 	Matches a single white space character, including space, tab, form feed, line feed.
// \w 	Matches any alphanumeric character including the underscore. Equivalent to [A-Za-z0-9_].


