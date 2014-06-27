// DOESN'T WORK:  message is local to "handle"; not available

// var message;  doesn't work because "message" isn't being passed
// from global context - no "handle(message)"

function handle() {
  console.log(message);
}
function setAlarm(message, timeout) {
  setTimeout(handle, timeout);
}
setAlarm("Wake UP!", 1000);


// WORKS
function setAlarm(message, timeout) {
  // Define handle in the closure
  function handle() {
    console.log(message);
  }
  setTimeout(handle, timeout);
}
setAlarm("Wake UP!", 1000);


/**************************************/


// MORE COMPLICATED EXAMPLE OF CLOSURE

var secretNumberGame = function() {
    var secretNumber = 21;

    return {
        responses: {
            true: "You are correct! Answer is " + secretNumber,
            lower: "Too high!",
            higher: "Too low!"
        },

        guess: function(guess) {
            var key =
                (guess == secretNumber) ||
                (guess < secretNumber ? "higher": "lower");
            console.log(this.responses[key])
            // "this" refers to object that's invoking the current function
        }
    }
}

var game = secretNumberGame();

console.log(game); // what is game at this point?

// let's test it out
game.guess(45);
game.guess(18);
game.guess(21);
