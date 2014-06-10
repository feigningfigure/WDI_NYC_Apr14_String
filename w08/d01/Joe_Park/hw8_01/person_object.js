function RandomNumber(UpperRange, LowerRange) {
  // min max inclusive
  // plus +1 to upper range to get it to equal max value...min is always greater than or equal to by Math.random();
  return Math.floor(Math.random() * ((UpperRange + 1) - LowerRange)) + LowerRange;

  // min max exclusive
  // Math.floor(Math.random() * (UpperRange - LowerRange + 1)) + LowerRange;

}


function Person(name){

  this.name = name;
  this.age = RandomNumber(35, 18);
  this.mood = RandomNumber(10, 0);
  this.introduce = function(){
    console.log("Hi my name is " + this.name + " and I'm " + this.age + " years old. " + "The rating for my mood is " + this.mood + "."  );
  }

}


var peopleArray = [new Person("Yaniv"), new Person("Marco"), new Person("Alex"), new Person("Keri"), new Person("Neel") ]
// peopleArray.push(new Person("Max"));
// peopleArray.push(new Person("Omar"));
// peopleArray.push(new Person("Keri"));
// peopleArray.push(new Person("Neel"));
// peopleArray.push(new Person("PJ"));

peopleArray.forEach(function(individual){
  individual.introduce();
});

// moodyPeeps would have been an array of names.
// moodyPeeps.forEach(function(name){
//   peopleArray.push(new Person(name));
// });