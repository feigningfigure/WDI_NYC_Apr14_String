// Returns a random integer between min and max
// Using Math.round() will give you a non-uniform distribution!
function getRandomInt(min, max) {
  return Math.floor(Math.random() * ((max + 1) - min)) + min;
}
function Person(name) {

    this.name = name;
    this.age = getRandomInt(18,80)
    this.mood = getRandomInt(1,10)
    this.personal_info = function(){
      console.log("This is " + this.name + ". They are " + this.age + " years old.");
    }
    this.sayHi = function(){
      if(this.mood === 1) {
        console.log("...please don't bother me...");
      }
      else if(this.mood === 2) {
        console.log("...meh...");
      }
      else if(this.mood < 5) {
        console.log("This is going to be a bad day.");
      }
      else if(this.mood < 6) {
        console.log("I'm not bad, at least.");
      }
      else if(this.mood < 8) {
        console.log("Sup.");
      }
      else if(this.mood < 10) {
        console.log("Hi, how are ya!?");
      } else {
        console.log("What a wonderful day!");
      }
    }
}

moody_people = []
moody_people.push(new Person("Max"))
moody_people.push(new Person("Stephanie"))
moody_people.push(new Person("Omar"))
moody_people.push(new Person("Neel"))
moody_people.push(new Person("Keri"))
moody_people.push(new Person("PJ"))

console.log();
moody_people.forEach(function(person){
  person.personal_info();
  console.log("When you greet them, they reply with...");
  person.sayHi();
  console.log();
});
