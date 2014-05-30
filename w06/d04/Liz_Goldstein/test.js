 word = "kitten"
 letter ="e"

 var word_array = word.split("");

for (var i = 0; i < word.length; i++) {
  if (word_array[i] !== letter) {
        word_array[i] = "_";}
        word_array.join("");

}



// console.log(word_array)



  // var word_array = word.split("");
  // for (var i = 0; i < word.length; i++) {
  //   if (word_array[i] !== letter) {
  //       word_array[i] = "_";}
  //       word_array.join("");

    // else
    //   "Bad guess";
}
  console.log(word_array);
