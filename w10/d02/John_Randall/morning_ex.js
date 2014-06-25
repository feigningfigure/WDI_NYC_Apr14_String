// ###Week10-Day02

// #WORK IN YOUR OWN FOLDER ONLY!

// ---

// ## Morning Exercise


// ### JS REGEX


// #### Part 1

// - Create a regex pattern for a vanilla name, e.g., "Peter Parker". 
// - Flip the name and print to Node, e.g., "Parker, Peter".


// #### Part 2

// - Create a regex pattern for a name that includes an apostrophe and/or hyphen, e.g., "Eva-Lotte O'Malley".
// - Flip the name and print to Node, e.g., "O'Malley, Eva-Lotte".











// #### Part 1

// - Create a regex pattern for a vanilla name, e.g., "Peter Parker". 
// - Flip the name and print to Node, e.g., "Parker, Peter".



// new RegExp(pattern [, flags]);

var inputString = "Peter Parker";
var regexTwoWords = /(\w+)\s(\w+)/;
var outputString = inputString.replace(regexTwoWords, "$2, $1");
console.log(outputString);







// / #### Part 2

// // - Create a regex pattern for a name that includes an apostrophe and/or hyphen, e.g., "Eva-Lotte O'Malley".
// // - Flip the name and print to Node, e.g., "O'Malley, Eva-Lotte".

var inputString = "Eva-Lotte O'Malley";
// var regexTwoWord_HyphenAndOrApostrophe = /  (\w+  \[-']  \w+)   \s   ((  \w+  \[-']  \w+))  /;
var regexTwoWord_HyphenAndOrApostrophe = /	(\[w-']+ )	\s   (\[w-']+ )  /;
var outputString = inputString.replace(regexTwoWord_HyphenAndOrApostrophe, "$2, $1");
console.log(outputString);







