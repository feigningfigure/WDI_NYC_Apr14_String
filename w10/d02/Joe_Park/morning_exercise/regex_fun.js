// Part 1

// - Create a regex pattern for a vanilla name, e.g., "Peter Parker". 
// - Flip the name and print to Node, e.g., "Parker, Peter".

// MDN solution...works amazingly
var re = /(\w+)\s(\w+)/;
var str = "Peter Parker";
var newstr = str.replace(re, "$2, $1");
console.log(newstr);


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions#Changing_the_Order_in_an_Input_String
// *****************Using Parenthesized Substring Matches*****************

// Including parentheses in a regular expression pattern causes the corresponding submatch to be remembered. For example, /a(b)c/ matches the characters 'abc' and remembers 'b'. To recall these parenthesized substring matches, use the Array elements [1], ..., [n].

// The number of possible parenthesized substrings is unlimited. The returned array holds all that were found. The following examples illustrate how to use parenthesized substring matches.

// Example 1

// The following script uses the replace() method to switch the words in the string. For the replacement text, the script uses the $1 and $2 in the replacement to denote the first and second parenthesized substring matches.



// Keri's solution
var regexFlip = /(\w+)\s(\w+)/;
var name = Peter Parker;
var newName = name.replace(regexFlip, "$2, $1");
console.log(newName);

// ********************* \s ********************
// Matches a single white space character, including space, tab, form feed, line feed. Equivalent to [ \f\n\r\t\v​\u00a0\u1680​\u180e\u2000​\u2001\u2002​\u2003\u2004​\u2005\u2006​\u2007\u2008​\u2009\u200a​\u2028\u2029​​\u202f\u205f​\u3000].

// For example, /\s\w*/ matches ' bar' in "foo bar."


// ********************* \w ********************
// Matches any alphanumeric character including the underscore. Equivalent to [A-Za-z0-9_].

// For example, /\w/ matches 'a' in "apple," '5' in "$5.28," and '3' in "3D."

// ********************* + *********************
// Matches the preceding character 1 or more times. Equivalent to {1,}.

// For example, /a+/ matches the 'a' in "candy" and all the a's in "caaaaaaandy".

// Joe's solution
var pattern = /(x)\s(x)/;
var fullname = "Peter Parker";
var lastNameFirst = fullname.replace(pattern, "$2, $1");
console.log(lastNameFirst);

// ************************ (x) *************************
// Matches 'x' and remembers the match, as the following example shows. The parentheses are called capturing parentheses.

// The '(foo)' and '(bar)' in the pattern /(foo) (bar) \1 \2/ match and remember the first two words in the string "foo bar foo bar". The \1 and \2 in the pattern match the string's last two words. Note that \1, \2, \n are used in the matching part of the regex. In the replacement part of a regex the syntax $1, $2, $n must be used, e.g.: 'bar foo'.replace( /(...) (...)/, '$2 $1' ).





// Part 2

// Create a regex pattern for a name that includes an apostrophe and/or hyphen, e.g., "Eva-Lotte O'Malley".
// Flip the name and print to Node, e.g., "O'Malley, Eva-Lotte".

var pattern = /([\w-']+)\s([\w-']+)/;
var fullname = "Eva-Lotte O'Malley";
var lastNameFirst = fullname.replace(pattern, "$2, $1");
console.log(lastNameFirst);


var pattern = /([\w-']+)\s([\s\w-']+)/;
var fullname = "Declan Van Welie";
var lastNameFirst = fullname.replace(pattern, "$2, $1");
console.log(lastNameFirst);


















