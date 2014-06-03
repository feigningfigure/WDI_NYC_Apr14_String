// list all the whole numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9. The sum of these multiples is 23.

// find the sum of all the multiples of 3 or 5 below 1000.

// KERI's example

console.time("multiples");

sum = 0;


for (var i = 1; i < 1000; i++){
	if ( i % 3 == 0 || i % 5 == 0 ){
		sum += i;
	}
}

console.timeEnd("multiples");
console.log(sum);

//	Mine....did not work 
// function Multiplier(number){
// 	var i = 0;
// 	var x = 1;
// 	var myArray = [];
// 	var result;


// 	// x is the number being incremented to find the multiples while i is the result that is limiting the number of responses.
// 	while (i < 20) {
// 		i = myArray.push(3 * x);
// 		i = myArray.push(5 * x);
// 		x++;
// 	}
// 	// all results are being pushed into an array for later use

// 	for (var y = 0; y < myArray.length(); y++ ){
// 		result += myArray[y];
// 	}
// 	return result

// }

// game = new Multiplier();
// console.log(game(1000));

