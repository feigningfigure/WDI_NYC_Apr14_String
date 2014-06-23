function sample(array) {
  return array[Math.floor(Math.random() * array.length)];
}

function Person() {
  var people = ["Andrew", "Scott", "Tim", "Patty", "Ginger"];
  var moods = ["happy", "unhappy"];
  var age = Math.floor(Math.random() * 80) + 18;
  this.name = sample(people);
  this.age = age;
  this.mood = sample(moods);
  this.introduce = function() {
    if (this.mood == "happy") {
      console.log("Hi! I'm " + this.name + " and I'm really " + this.mood + " to meet you!");
    } else {
      console.log("My name is " + this.name + " but do you really care?  I'm " + this.mood + " and you probably couldn't care less.");
    };
  };
}

person1 = new Person();
person1.introduce();



