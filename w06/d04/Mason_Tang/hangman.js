// function Hangman (word) {
// //all code for game here
//     var word_array = word.split('');

//     var word_length = word_array.length

//     for (var i = 0; i <= word_length; i++) {
//         var blanks = "_"
//         var blank_string = blanks.join
//         console.log(blank_string)
//     }




//     this.progress = function(){
//       // fill in
//     };

// }

// var game = new Hangman("detective");
// //split detective into array of letters
// //spit back underscore with spaces
// game.progress(); //=> "_ _ _ _ _ _ _ _"

// // var game = new Hangman("gandhi");

// // game.progress(); //=> "_ _ _ _ _ _"





function Hangman (word) {
//all code for game here
    this.progress = function(){
      // fill in
        var playerProgress = [];

        for (var i = 0; i < word.length; i++) {
          // add an underscore to the array
          playerProgress.push("_");
        } //string => array

        return playerProgress.join(" "); // array => string
    };

}

var game = new Hangman("detective");
//split detective into array of letters
//spit back underscore with spaces
console.log(game.progress()); //=> "_ _ _ _ _ _ _ _"

var game = new Hangman("gandhi");

console.log(game.progress()); //=> "_ _ _ _ _ _"


