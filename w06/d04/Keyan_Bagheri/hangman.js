
function progress(array){
  var playerProgress = []
  array.forEach(function(character){
    if (character.toUpperCase() === character || character === " ") {
      playerProgress.push(character);
    } else {
      playerProgress.push("_");
    }
  })
  return playerProgress.join(" ");
}

function correctGuess(letter,array){
  var revealLetters = []
  array.forEach(function(character){
    if (character === letter.toLowerCase()) {
      revealLetters.push(letter.toUpperCase());
    } else {
      revealLetters.push(character);
    }
  })
  return revealLetters
}

function isInArray(array,search)
{
    return (array.indexOf(search.toLowerCase()) >= 0) ? true : false; 
}

function hangman(word) {
  this.word = word;
  var wordSplit = word.split("");
  var badGuesses = []
  this.guess = function(letter) { 
    var theLetter = letter.toLowerCase();
    var correctness = isInArray(wordSplit,letter)
    if (correctness === true) {
      wordSplit = correctGuess(letter,wordSplit);
      console.log("CORRECT!");
      console.log(progress(wordSplit));
    } else {
      badGuesses.push(letter);
      console.log("WRONG!");
    };
    var incorrects = ["Incorrect Guesses So Far: ", badGuesses].join("");
    console.log(incorrects);
    console.log(progress(wordSplit));
  };
}

var words = ["catcher","scratch","clocks","second","finally","today","hangman","bearded","genius","winning"]

function randomWord(wordlist) {
    for (var i = wordlist.length - 1; i > 0; i--) {
        var j = Math.floor(Math.random() * (i + 1));
        var temp = wordlist[i];
        wordlist[i] = wordlist[j];
        wordlist[j] = temp;
    }
    return wordlist.pop()
}

var game = new hangman(randomWord(words))

game.guess("c")

// console.log(game.progress());

    // for each letter in the string...
//     var playerProgress = progress(wordSplit)
//   }
// }
