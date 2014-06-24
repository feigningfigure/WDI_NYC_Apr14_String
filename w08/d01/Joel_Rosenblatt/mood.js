function Person(name, age, mood) {
  this.name = name;
  this.age = age;
  this.mood = mood;
  this.introduce = function () {
    if (this.mood === 1) {
      console.log("...hey... I'm " + this.name + " , I want to kill myself...");
    }
    else if (this.mood < 5) {
      console.log("...meh...I'm " + this.name);
    }
    else if (this.mood === 5) {
      console.log("I am moodless , I go by " + this.name);
    }
    else if (this.mood < 10) {
      console.log("HI! I'm " + this.name + " doing dandy, thank you very much!");
    }
    else if (this.mood === 10) {
      console.log("WOOOOOOOOO! I'M " + this.name.toUpperCase() + "!!!!");
    }
  };
}

var friends = [
  bob = new Person("Bob", 26, 1),
  jimmy = new Person("Jimmy", 55, 3),
  jenn = new Person("Jenn", 78, 5),
  pippin = new Person("Pippin", 19, 7),
  gregory = new Person("Gregory", 8, 10)
];

bob.introduce();
jimmy.introduce();
jenn.introduce();
pippin.introduce();
gregory.introduce();
