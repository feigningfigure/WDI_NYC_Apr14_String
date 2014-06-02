// word = "kitten";
// empty_word = ["_", "_", "_", "_", "_", "_",];
// word_array = word.split("");
// letter ="k";


// var messages = ["Good!", "Great!", "Awesome!", "Super!", "Nice!"];
// function getMessage() {
//    return messages[Math.floor(Math.random() * messages.length)];
// }





function Check(word){



this.guess = function(){
   var random_words = word
   var word = random_words[Math.floor(Math.random() * random_words.length)];
   return word;
}

this.test = function(){
  return word;}

}

var game = new Check(["detective", "kitten", "test"]);
console.log(game.test());
console.log(game.guess());
// for (var i = 0; i < word.length; i++) {
//     if (word_array[i] === letter) {
//           empty_word[i] = letter;}
// }
//  console.log(empty_word);



//  var word_array = word.split("");

// for (var i = 0; i < word.length; i++) {
//   if (word_array[i] !== letter) {
//         word_array[i] = "_";}
//         word_array.join("");

// }
// var word_array = word.split("");

//  function substitution(word, word_array){
//   for (var i = 0; i < word.length; i++)

//   {
//     if (word_array[i] !== letter)
//     {
//         word_array[i] = "_";
//         // var value = "Good guess";
//         // return word_array + value;
//         }
//       }
//     }

// function substitute(word, word_array, letter){
// for (var i = 0; i < word.length; i++) {
//   if (word_array[i] !== letter) {
//         word_array[i] = "_";}
//         console.log(word_array);
// }
  // word_array.join("");
  // console.log(word_array);
// }

// substitute(word, letter)


// console.log(word_array)



  // var word_array = word.split("");
  // for (var i = 0; i < word.length; i++) {
  //   if (word_array[i] !== letter) {
  //       word_array[i] = "_";}
  //       word_array.join("");

    // else
    //   "Bad guess";
// }
//   console.log(word_array);
