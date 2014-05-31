function Hangman(word) {

  var playerProgress = []
  var guess_counter = 0
  var letter_guesses = []
  var word = word
  var hint_counter = 0
  var hint_array = []


  this.progress = function(){



   for (var i = 0; i < word.length; i++) {
    if (playerProgress.length < word.length){
    playerProgress.push("_");
    hint_array.push(word[i]);
    }


    };



     if (guess_counter === 5) {
      console.log(word);
      return null
      } else if (playerProgress.join("") === word){
  console.log("You win!");

}


    console.log(playerProgress.join(" "));



  }




 this.guess = function(letter){


  word_list = word.split("")
  letter_guesses.push(letter);




    for (var i = 0; i < word_list.length; i++){
    if (word_list[i] === letter && guess_counter < 5) {
      playerProgress[i] = letter;


    } else if (guess_counter === 5) {
      return null;
      console.log("Game over!");
    } else if (playerProgress.join("") === word){
  return null;

}
  }



    if ( !String.prototype.contains ) {
    String.prototype.contains = function() {
        return String.prototype.indexOf.apply( this, arguments ) !== -1;
    }
}



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

  for (var i = 0; i < playerProgress.length; i++)

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


}


var game = new Hangman ("zorro");
















































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
