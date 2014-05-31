function Hangman(word_array) {

  var playerProgress = []
  var guess_counter = 0
  var letter_guesses = []
  var word = word_array[Math.floor(Math.random() * word_array.length)];
  var hint_counter = 0
  var hint_array = []


  this.progress = function(){



   for (var i = 0; i < word.length; i++) {
    if (playerProgress.length < word.length){
    playerProgress.push("_");
    hint_array.push(word[i]);
    }


    };

     // return playerProgress.join(" ");

     if (guess_counter === 5) {
      console.log(word);
      return null
      }


    console.log(playerProgress.join(" "));

    console.log(hint_array);

  }




 this.guess = function(letter){

  //
  word_list = word.split("")
  letter_guesses.push(letter);


  //turn the word into an array first and keep the playerProgress array an array (no join). Then replace that index each time. Splice does not seem to be working.

    for (var i = 0; i < word_list.length; i++){
    if (word_list[i] === letter && guess_counter < 5) {
      playerProgress[i] = letter;
      // playerProgress[i].replace("_", letter);
      // playerProgress.splice(word_list[i], word_list.length + 1, letter);

            // playerProgress[i] = letter;
      // console.log("true");
       // playerProgress.splice(word_array[2], 0, letter);
      // } else {
      // console.log("false");
      // playerProgress.push("_");

    } else if (guess_counter === 5) {
      return null;
      console.log("Game over!");
    }
  }

  //Apparently you're not supposed to do the below because it tampers with the constants in JS. Explore options using indexOf.
    if ( !String.prototype.contains ) {
    String.prototype.contains = function() {
        return String.prototype.indexOf.apply( this, arguments ) !== -1;
    }
}

//Attempting to add in a second requirement to the if statement that checks if the letter has already been guessed. if (!word.contains(letter) && !playerProgress.indexOf(letter)){

if (!word.contains(letter)){
  guess_counter += 1;
}

if (guess_counter === 5) {
  console.log("Game over!");
  return null
}

 if (playerProgress === word){
  console.log("You win!");
  return null
}

console.log(word.contains(letter));
  // console.log(guess_counter);
}

this.giveUp = function(){
  guess_counter = 5;
  console.log(word);
}

 this.incorrect = function(){

  console.log(guess_counter);
 }

 this.guesses = function(){
  console.log(letter_guesses);
 }




// this.hint = function(){


// }



  // var random_letter = word[Math.floor(Math.random() * word.length)];

  // if (!playerProgress.contains(random_letter))
  // console.log(word.);

  //Push the word into an array, and remove   letters as the player guesses them. That way, you can console.log a random letter from that array as a hint.
}


var game = new Hangman (["ghandi", "detective"]);


game.progress();
game.guess("q");
game.progress();
game.guess("d");
game.progress();
game.guess("e");
game.progress();
game.incorrect();
game.guesses();
game.giveUp();
game.guess("x");
game.guess("v");
game.guess("y");
game.guesses();
game.progress();
game.guess("w");
game.guess("g");

// game.guess("t");
// game.progress();

// Add a guess counter to the game to track the number of guesses that have been made
