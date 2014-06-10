var people_array = ["Dara", "Jane", "Joe", "Liz", "John"]
var mood_array = ["happy", "unhappy"]

function messageMoody (people){
  this.age = Math.floor(Math.random()*50);
  this.mood = mood_array[Math.floor(Math.random()*2)];

  if (mood === "happy"){
    console.log("Hi! I am "+ people +". I am "+ this.age +" years old. Please to meet you! I'm in a "+ this.mood +" mood.");
  } else {
    console.log("Hi... "+ people +" here. Don't talk to me. I'm "+ this.mood +" :(")
  }
  return;
};

people_array.forEach(messageMoody);
