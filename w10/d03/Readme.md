	###Week10-Day03

#WORK IN YOUR OWN FOLDER ONLY!

---

## Morning Exercise


### More REGEX

`Email regex is a hard problem.` But we're going to tackle it!


#### Before we write the REGEX...

`7-10 minutes`

We need a function to test whether or not our regex works.

So let's test whether or not a more simple regex is valid.

- Write a javascript function that returns `true` or `false` using a regex that tests for two words separated by a space.  (You can use the regex we made yesterday, with a few modifications.)


#### Create an email REGEX!

- Get into your Scrumr groups.

- I will count you off:  1, 2, 3

- Remember your number.

- Every five minutes, one person in your group will move clockwise to the next group. (Number 1s, then 2s, then 3s.)

- After 20 minutes, we'll test out our email attempts.

--------

## Homework

`This entire application should be written using TDD.  This will require at least 10-15 tests.`

- Create a rails app called `subway_manager`
- Use a postgresql database

- Create a model for `subway_line`
	- 'name' ~ string
	- 'color' ~ string
- Create a model for `station`	
	- 'address' ~ string 
- Set up the many-to-many relationship for stations and subway_lines 

- Seed your database with the subway information at the bottom

- Seed your database with station data using NYC subway data:  `https://data.cityofnewyork.us/api/views/he7q-3hwy/rows.json`
	- Hint: Use `HTTParty`	 	
	- Extra: Set the background color of each row to the `color` of the station

- Create all the components necessary:
	- a get request to '/' should display a table of subway lines
	- Each subway line should include a show page that displays all the station addresses


#### Consider testing the following...

- if the seed file populated
- if the associations between the models are correctly set up

#### subway_line seed data

- Seed your database!  Use the content below for this
- Extra: Set the background color of each row to the `color` of the station

```ruby

SubwayLine.delete_all

SubwayLine.create(name:"1", color:"red")
SubwayLine.create(name:"2", color:"red")
SubwayLine.create(name:"3", color:"red")
SubwayLine.create(name:"4", color:"green")
SubwayLine.create(name:"5", color:"green")
SubwayLine.create(name:"6", color:"green")
SubwayLine.create(name:"6 Express", color:"green")
SubwayLine.create(name:"7", color:"purple")
SubwayLine.create(name:"7 Express", color:"purple")
SubwayLine.create(name:"A", color:"blue")
SubwayLine.create(name:"C", color:"blue")
SubwayLine.create(name:"E", color:"blue")
SubwayLine.create(name:"B", color:"orange")
SubwayLine.create(name:"D", color:"orange")
SubwayLine.create(name:"F", color:"orange")
SubwayLine.create(name:"M", color:"orange")
SubwayLine.create(name:"G", color:"lightgreen")
SubwayLine.create(name:"J", color:"brown")
SubwayLine.create(name:"Z", color:"brown")
SubwayLine.create(name:"L", color:"lightgrey")
SubwayLine.create(name:"S", color:"gray")
SubwayLine.create(name:"N", color:"yellow")
SubwayLine.create(name:"Q", color:"yellow")
SubwayLine.create(name:"R", color:"yellow")

```






