function Hangman(word) {
var playerprogress = [];
var count = 0;

	this.progress = function(){
		if(playerprogress.length === 0 ){
			for (var i = 0; i < word.length; i++) {
				playerprogress.push("_");
			}
		}

		return playerprogress.join(" ");

	};

	this.guess = function(letter) {
		if(count < 5){
			if(word.indexOf(letter) !== -1){
				for (var i = 0; i < word.length; i++) {
					if(word.charAt(i) === letter){
						playerprogress[i] = letter;
					}
				}
				return "true"	
			}else{
				console.log(count+=1);
				return "false"
			}
		}else{
			playerprogress = word.split("")
			return null
		}
	};

}

var game = new Hangman("detective");

console.log(game.progress()); //=> "_ _ _ _ _ _ _ _ _"
console.log(game.guess("e")); 
console.log(game.guess("c"));
console.log(game.guess("x")); //1
console.log(game.progress());
console.log(game.guess("x")); //2
console.log(game.guess("x")); //3
console.log(game.guess("x")); //4
console.log(game.guess("x")); //5
console.log(game.guess("x")); //6
console.log(game.progress());

// node testing ========================

// word = "mom"
// letter = "m"
// array = ["-", "-", "-"]
// i = 3
// if(word.charAt(i) === letter){
// 	array[i] = letter;
// }

// scrap ===============
	// this.guess
		// function match_letter(letter, index, array){
		// 	array[word.indexOf(letter)] = element;
		// }
		// playerprogress.filter(match_letter(letter));

// helper code from interwebz ======================

// for (var i = 0; i word.length; i++) {
//     if (i == 3) continue;
//     text += "The number is " + i + "<br>";
// }


// var numbersarray=[-3, 5, 34, 19]

// function greaterThanFive(element, index, array) {
//  return (element > 5)
// }

// var FiveplusArray=numbersarray.filter(greaterThanFive) //new array contains [34, 19]