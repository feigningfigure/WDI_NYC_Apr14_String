var someFunc = function() {
  console.log("I am a function");

  return "Hello, I am a return"
};

function callbackMeMaybe(number, callback) {
  var result = number * 10000;
  callback();
  return result
}

function notify(){
  console.log("This is an annoying song. Sidenote - I am the result of the callback");
}

// TIMERS

  // SETTIMEOUT

  setTimeout(FUNCTION, TIME)

var someRandomTime = function() {
  var rand = Math.random();

  return rand
};

  function realTalk(string){
    var delay = Math.random()*4000;
    setTimeout(function(){console.log(string) }, delay);
  }

  var setinterval = setInterval(realTalk, someRandomTime)

  clearInterval(realTalk)
