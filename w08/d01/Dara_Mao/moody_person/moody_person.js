// 5 person array
var people_array = ["Dara", "Jane", "Joe", "Liz", "John"]
var mood_array = ["happy", "unhappy"]
var age_array = [30,22,23,32,26]

function messageMoody (people){
  var index = Math.floor(Math.random()*5);
  var age = age_array[index];

  // Randomly pick a mood for the person
  var mood_array_index = Math.floor(Math.random()*2);
  var mood = mood_array[mood_array_index];

  if (mood == "happy"){
    console.log("Hi! I am "+ people +". I am "+ age +" years old. Please to meet you! I'm in a "+ mood +" mood.");
  } else {
    console.log("Hi... "+ people +" here. Don't talk to me. I'm "+ mood +".")
  }
  return;
};

people_array.forEach(messageMoody);
