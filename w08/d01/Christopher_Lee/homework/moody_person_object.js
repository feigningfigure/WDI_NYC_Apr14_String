function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
}

personArray = [];

personArray[0] = new Person("Bob", 52, "happy");
personArray[1] = new Person("Joy", 15, "sad");
personArray[2] = new Person("Brenda", 20, "sad");
personArray[3] = new Person("Elvis", 32, "happy");
personArray[4] = new Person("John", 22, "happy");


Person.prototype.introduce = function(){
  if(this.mood === "happy"){
    console.log("Hi I'm " + this.name + ". I'm " + this.age + " and I'm very happy to make your acquantance");
  }else{console.log("Hi... I'm " + this.name + ". I gotta go");
  }
}

for(i=0; i < personArray.length; i++){
  personArray[i].introduce();
}


  // greet: function (name, mood) {
  //    name = name || "You";
  //    mood = mood || "good";
  //    console.log("Hello" + name +
  //                 " I am " + this.name +
  //                 " and I am in a " + mood + " mood!");
