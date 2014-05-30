
function note(){
  console.log("timeout");
}

function rando(){
  rand = Math.random()
  result = rand * 10000
  return result
}




var setInterval = setInterval(note(), rando());

clearInterval(interval)



// setTimeout(note(), rando());
