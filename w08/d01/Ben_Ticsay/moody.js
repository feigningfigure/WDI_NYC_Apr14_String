var people = [];

function Person(name, age, mood) {
  this.name = name,
  this.age = age,
  this.mood = mood,
  this.introduction = function(){
    return "Hi I am " + this.name + ". " + "I\'m feeling " + this.mood + " That\'s how. Now, get outta my face ya tourist."
  }
};

var ben = new Person("Ben", 23, "meh");
var keyan = new Person("Keyan", 29, "3/10");
var john = new Person("John", 32, "unsatisfied");
var joel = new Person("Joel", 22, "dandy");
var jane = new Person("Jane", 25, "unattentive");

people.push(ben, keyan, john, joel, jane);