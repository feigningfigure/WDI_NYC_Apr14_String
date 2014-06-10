var people = [];

function Person(name, age, mood) {
  http://this.name = name,
  this.age = age,
  this.mood = mood,
  this.introduction = function(){
    return "Hi I am " + this.name + ". " + "I\'m feeling " + this.mood
  }
};

var mason = new Person("Mason", 25, "good");
var sasha = new Person("Keyan", 29, "bad");
var corinne = new Person("John", 32, "fine");
var james = new Person("Joel", 22, "great");
var sarah = new Person("Jane", 25, "hungry");

people.push(mason, sasha, corinne, james, sarah);
