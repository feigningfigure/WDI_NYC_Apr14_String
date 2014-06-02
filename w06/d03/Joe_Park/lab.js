// LAB PART A
// "ლ(ಠ益ಠლ)"

function angryJoe(face) {
	var delay = Math.random()*4000;
	setTimeout(function(){console.log(face) }, delay);
}

// LAB PART B

function angryJoePark(face) {

	var delay = Math.random()*2000;
	var interval = setInterval(function(){ console.log(face);}, delay);

	var stop = Math.random()*8000;
	setTimeout(function(){ clearInterval(interval); console.log("biiiiiiip") }, stop);
}

angryJoePark("ლ(ಠ益ಠლ)");


