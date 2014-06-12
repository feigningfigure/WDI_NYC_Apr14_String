function Hangman(word) {
     // FILL ME IN

// defining the behavior of this object
// basic instructer code

     this.progress = function () {
          // FILL ME IN
          //array
var playerProgess =[];
// for each letter in the string ...
for (var i = 0; i < word.length; i++){
//add an uderscore to the array
 playerProgess.push("_");
} //string => array
return playerProgess.join(""); //array => string
     };

}

   var game = new Hangman ("detective") ;

   console.log(game.progress()); //=> "---------"

   var game = new Hangman ("gandhi")

   console.log(game.progress()); //=> "------"

//print the length of
//loops i


//scooping is everything
