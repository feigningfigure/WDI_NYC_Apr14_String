var total=0;

function totalNumbers(){
  for (var i = 0; i <10; i++){
    if((i % 3) ===0 ||(i%5)===0){
    total+=i;
    }
  }
  console.log(total)
}

totalNumbers();




