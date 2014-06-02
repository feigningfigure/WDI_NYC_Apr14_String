// side effect of console.log is "I am a function"
// the output is 'undefined'
var someFunc = function() {
  console.log("I am a function");
  return "hello, i am a return"
};

var someRandomNum = function() {
  var rand =  Math.random();
  return rand
};

// number is a parameter your are going to pass
// callback is a parameter that is a function
function callbackMeMaybe(number, callback) {
  var result = number * 10000
  callback(number);
  return result
}

function notify(){
  console.log("This is an annoying song. Sidenote - I am the result of the callback");
}

//anytime you make a statement: no semicolon

function madPerson(red_dog){
  console.log("&#@*#%#R#$%%")
  console.log(red_dog)
}

// TIMERS
// Set timeout
// first variable passed to set Timeout is the function, time.

// setTimeout(FUNCTION, TIME)
function madPerson(){
  console.log("&#@*#%#R#$%%!!! THE TIMER HAS BEEN REACHED!");
}

setTimeout(function(){console.log("I am anonymous.")}, 5000);

// setInterval(FUNCTION, TIME)

var interval = setInterval(madPerson, 2000)
// how to end it
clearInterval(interval)

// Part A
function stringPrint(string){
  var delay = Math.random()*4000;
  console.log("Wait " + delay + " miliseconds");
  setTimeout(function(){console.log(string)}, delay);
}

// Part B
function incessantPrint(string){
  var delay = Math.random()*2000;
  var interval = setInterval( function(){console.log(string)}, delay)
  var stop = Math.random()*8000;
  setTimeout(function(){clearInterval(interval);console.log("end")}, stop)
}


