// Choose a random word from an array
var words = ['cat', 'tree', 'swing', 'around', 'scientist'];

// This function will pick our word
function chooseWord () {

  var index_num =  Math.floor(Math.random()*words.length)
  var random_word = words[index_num];
  return random_word

}

console.log(chooseWord());

// Puts "_" for all the letters in the word
function blanksFromAnswer ( answerWord ) {
    playerProgress = [];
    // Write a loop here to concatanate a '_' to result for
    // every letter in answerWord.
     for (var i = 0; i < answerWord.length; i++){
      // Add an underscore to the array
      playerProgress.push("_ ");
    }
     var result = playerProgress.join(""); // This is the variable we want to use

    return result;
}

//Substitute correct character in the _ spaces
function alterAt ( index_num, replace_char, originalString ) {
    return originalString.substr(0,index_num) + replace_char + originalString.substr(index_num + 1, originalString.length)
}

function guessLetter( letter, shown, answer ) {
    var checkLetter = -1;  // This variable will hold the indexOf()
    checkLetter = answer.indexOf(letter); // Single Argument Version starting at 0
    while ( checkLetter >= 0 ) {

        // Replace the letter in shown with alterAt() and then store in shown.
        shown = alterAt(checkLetter, letter, shown);

        // Use indexOf() again and store in checkLetter
        checkLetter = answer.indexOf(letter, checkLetter+1);
    }

    // Return our string, modified or not
    return shown;
}
