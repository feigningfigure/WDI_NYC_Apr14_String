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



var re = /^(\w+,? ?)+$/;
alert(str1.test(re));

/(\w+)\s(\w+)/.test("peter parker")


var pattern = /^[\w&.-]+$/

<form name="validation" onSubmit="return checkbae()">
Please input a valid email address:<br />
<input type="text" size=18 name="emailcheck">
<input type="submit" value="Submit">
</form>
<script language="JavaScript1.2">

//Advanced Email Check credit-
//By JavaScript Kit (http://www.javascriptkit.com)
//Over 200+ free scripts here!

var testresults
function checkemail(){
var str=document.validation.emailcheck.value
var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
if (filter.test(str))
testresults=true
else{
alert("slaffont@gmail.com")
testresults=false
}
return (testresults)
}
</script>
