// CHECK THIS OUT: http://javascriptissexy.com/javascript-variable-scope-and-hoisting-explained/

// GOTCHA:  Javascript does not have “block”-level scope, e.g., { … }, but function-level scope

// GLOBAL vs LOCAL
var name = "Global";
function showName() {
  var name = "Local"; // local variable; only accessible in this showName function
  console.log (name); // Local
}
console.log (name); // Global: the global variable
showName(); // Local


// LOCAL HAS ACCESS TO GLOBAL
var name = "Global";
function showName () {
  console.log (name); // Global
}
showName();


// LOCAL MUST BE DECLARED
var name = "Global";

function showGlobalName() {
  console.log (name);
}

function isThisLocalName() {
  name = "Am I Really Local?";
  console.log (name);
}

function reallyLocalName() {
  var name = "Local";
  console.log (name);
}

showGlobalName();
isThisLocalName();
showGlobalName();
reallyLocalName();

