    function Person(mood){

    function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
    };

    var people = ["Bob","Curly","Barney","Bruce","Edgar"];
    this.name = people[Math.floor(Math.random() * people.length)];
    this.age = getRandomInt(25, 50);
    this.mood = mood;

    this.introduce = function(){

      if (mood === "happy"){
      console.log("Hi! I'm " + this.name + ". I'm " + this.age + " years old. Pleased to meet you!");
      } else if (mood === "mopey") {
      console.log("Hi! I'm " + this.name + ". I'm " + this.age + " years old. Life is meaningless!");
      } else if (mood == "pissed") {
      console.log("Hi...I'm " + this.name + ". I'm " + this.age + " years old. I hate you.")
      }

    }

  }

person = new Person("mopey");
person.introduce();


