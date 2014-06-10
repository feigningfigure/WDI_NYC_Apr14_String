    function Person(){

    function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
    };

    var people = ["Bob","Curly","Barney","Bruce","Edgar"];
    var moods = ["mopey","pissed", "happy"];
    this.name = people[Math.floor(Math.random() * people.length)];
    this.age = getRandomInt(25, 50);
    this.mood = moods[Math.floor(Math.random() * moods.length)];

    this.introduce = function(){

      if (this.mood === "happy"){
      console.log("Hi! I'm " + this.name + ". I'm " + this.age + " years old. Pleased to meet you!");
      } else if (this.mood === "mopey") {
      console.log("Hi! I'm " + this.name + ". I'm " + this.age + " years old. Life is meaningless!");
      } else if (this.mood == "pissed") {
      console.log("Hi...I'm " + this.name + ". I'm " + this.age + " years old. I hate you.")
      }

    }

  }

person = new Person();
person.introduce();


