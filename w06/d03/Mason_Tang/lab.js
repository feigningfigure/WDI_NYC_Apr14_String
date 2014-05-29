
function note(){
  console.log("timeout");
}

function rando(){
  rand = Math.random()
  result = rand * 10000
  return result
}


// setTimeout(note(), rando());


var setInterval = setInterval(note(), rando())

clearInterval(interval)
