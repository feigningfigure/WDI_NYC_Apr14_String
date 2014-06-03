//JAVASCRIPT

function numbers (){
    var sum = 0;
    var max = 1000;

    for (i = 0; i < max; i++){
        if (i % 3 == 0 || i % 5 == 0){
            sum += i;
        }
    }
    return sum;
}

console.log(numbers ());

