function Hangman(word_array) {

    var playerProgress = []
    var guess_counter = 0
    var letter_guesses = []
    var word = word_array[Math.floor(Math.random() * word_array.length)];
    var hint_counter = 0
    var hint_array = []

    this.progress = function(){

        for (var i = 0; i < word.length; i++) {

            if (playerProgress.length < word.length) {
            playerProgress.push("_");
            hint_array.push(word[i]);
            }

        };

        if (guess_counter === 5) {
        console.log(word);
        return null;
        } else if (playerProgress.join("") === word){
        console.log("You win!");
        }

        console.log(playerProgress.join(" "));

    }




    this.guess = function(letter){

        // Turn the word into an array first.
        word_list = word.split("")

        // Add to the letter_guesses array with each guess.
        letter_guesses.push(letter);

        // Replace each index in the playerProgress array that matches the letter.
        for (var i = 0; i < word_list.length; i++) {
        if (word_list[i] === letter && guess_counter < 5) {
        playerProgress[i] = letter;

        //  Alternate (but more complicated) methods to add to the playerProgress array:
        // playerProgress[i].replace("_", letter);
        // playerProgress.splice(word_list[i], word_list.length + 1, letter);

        } else if (guess_counter === 5) {
        return null;
        console.log("Game over!");
        } else if (playerProgress.join("") === word) {

        return null;

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


this.hint = function(){
  // Check if the space in the playerProgress is filled with an underscore. If so, fill in the space at the index the random letter was in in the hint_array

  //look for an index containing an underscore in the playerProgress array.
  for (var i = 0; i < playerProgress.length; i++)
// if the character hasn't been guessed, put in a character
    { if (playerProgress[i] === "_" && hint_counter < 1){ playerProgress[i] = hint_array[i];
      hint_counter += 1;
      console.log(hint_array[i]);

  } else if (i === "_" && hint_counter > 1){
    playerProgress[i] = hint_array[i];
    guess_counter += 1;
    console.log(hint_array[i]);
  }

}

}

// this.hint = function(){


// }



  // var random_letter = word[Math.floor(Math.random() * word.length)];

  // if (!playerProgress.contains(random_letter))
  // console.log(word.);

  //Push the word into an array, and remove   letters as the player guesses them. That way, you can console.log a random letter from that array as a hint.
}


var game = new Hangman (["ghandi", "detective", "elephant", "zorro", "zoo"]);


// game.progress();
// game.hint();
// game.progress();
// game.guess("q");
// game.progress();
// game.guess("d");
// game.hint();
// game.progress();
// game.guess("e");
// game.hint();
// game.progress();
// game.incorrect();
// game.guesses();
// game.guess("x");
// game.guess("v");
// game.guess("y");
// game.guesses();
// game.progress();
// game.guess("w");
// game.guess("g");

// game.guess("t");
// game.progress();

// Add a guess counter to the game to track the number of guesses that have been made

// game.progress();
// game.guess("e");
// game.guess("c");
// game.guess("a");
game.progress();
// game.giveUp();
// game.guess("p");

game.guess("e");
game.guess("c");
game.hint();
game.progress();
game.guess("o");
game.progress();
game.guess("t");
game.guess("r");
game.progress();
game.guess("y");
