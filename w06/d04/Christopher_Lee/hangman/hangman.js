// function Hangman(word){
//   // FILL ME IN
//   var letters = word.split('');
//   var blanks = []
//   // var spaces = function(){for(i=0;i<word.length;i++){
//   //   blanks.push("_"); }};
//   this.progress = function(word){
//   // FILL ME IN
//   for(i = 0; i < letters.length; i++){
//     blanks.push("_")};
//   return blanks;
//   };
// }

// make sure you didn't break other stuff

// start looking at books to figure out how you can refactor this

function Hangman(word_array){
   if(typeof word_array === 'string'){
    var word = word_array;
    } else{
    var word = word_array[Math.floor(Math.random() * word_array.length)];
    };
  var letters = word.split('');
  // #QUESTION: what is the correct way to do this?
  var playerProgress = [];
  for (var i = 0; i < word.length; i++){
        // add an underscore to the array
        playerProgress.push("_");
      }
  var incorrectGuesses = 0;
  var giveUp = false;
  var previousGuesses = [];
  var hintAsk = false;
  var hintArray = word.split('');
  var hint = hintArray[Math.floor(Math.random() * word_array.length)];

  this.progress = function(){
    if(incorrectGuesses >= 5 || giveUp === true) {
      return word
    } else if (playerProgress.length === 0){
      // for each letter in the string ...
      for (var i = 0; i < word.length; i++){
        // add an underscore to the array
        playerProgress.push("_");
      }
    }
  return playerProgress.join(" "); // array => string
  };

  // its adding the number of letters to the array regardless of what is in it

  this.guess = function(letter_guess){
    var indices = [];
    var idx = letters.indexOf(letter_guess);
    while (idx != -1) {
        indices.push(idx);
        idx = letters.indexOf(letter_guess, idx + 1);
    }
    if (incorrectGuesses >= 5 || giveUp === true || playerProgress.indexOf('_') === -1){
      return null
    } else if (indices.length > 0) {
      indices.forEach(function(correct_letter) {
        playerProgress[correct_letter] = letter_guess
      });
      return true
    } else {
      // find out the .include of Javascript
      if(previousGuesses.indexOf(letter_guess) != -1){
        return false
      }else{
        incorrectGuesses++;
        previousGuesses.push(letter_guess);
        // console.log(incorrectGuesses);
        return false
      }
    }
    //else return false and increment the counter. make sure it increments  the counter first. correctly incrementing the counter. now returns null after 5 guesses.
  };
  this.incorrect = function(){
    return incorrectGuesses
  }

  this.guesses = function(){
    return previousGuesses
  }

  this.giveUp = function(){
    giveUp = true;
  }

  function remove(arr, item) {
      for(var i = arr.length; i--;) {
          if(arr[i] === item) {
              arr.splice(i, 1);
          }
      }
  }

  this.hint = function(){
  playerProgress.forEach(function(guessed_letter) {
    hintArray.forEach(function(original_letter) {
      if(guessed_letter === original_letter){
          remove(hintArray, guessed_letter);
        }
    });
  });
  hint = hintArray[Math.floor(Math.random() * word_array.length)];
  // put it into playerProgress - kinda like guessing a correct letter
  var indices = [];
  var idx = letters.indexOf(hint);
    while (idx != -1) {
        indices.push(idx);
        idx = letters.indexOf(hint, idx + 1);
    }
  indices.forEach(function(correct_letter) {
        playerProgress[correct_letter] = hint
      });
  // last thing: remove it from hintArray
  remove(hintArray, hint)
  // return hint
  if (hintAsk === true){
    incorrectGuesses++;
  }
  hintAsk = true;
  return hint
  }
}

// // Works!
// var indices = [];
// var idx = chars.indexOf("z");
// while (idx != -1) {
//     indices.push(idx);
//     idx = chars.indexOf("z", idx + 1);
// }

// // Like each in Ruby
// a.forEach(function(entry) {
//     console.log(entry);
// });


// // var myArray = ['January', 'February', 'March'];

// var game = new Hangman(["detective", "gandhi"]);

// word_array = ["detective", "gandhi"]

// word = word_array[Math.floor(Math.random() * word_array.length)];


// // goal: get rid of all duplicates in the word detective
// // then randomly select a letter from remaining
// //1) find letter in the playerProgress array
// //2) delete all instances from the hint array
// //2) move on to the next letter and repeat



// // works
// playerProgress.forEach(function(guessed_letter) {
//     hintArray.forEach(function(original_letter) {
//       if(guessed_letter === original_letter){
//           remove(hintArray, guessed_letter);
//         }
//     });
// });


//  // http://stackoverflow.com/questions/5767325/remove-specific-element-from-an-array

// function remove(arr, item) {
//       for(var i = arr.length; i--;) {
//           if(arr[i] === item) {
//               arr.splice(i, 1);
//           }
//       }
//   }


