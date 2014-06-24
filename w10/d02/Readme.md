###Week10-Day02

#WORK IN YOUR OWN FOLDER ONLY!

---

## Morning Exercise


### JS REGEX


#### Part 1

- Create a regex pattern for a vanilla name, e.g., "Peter Parker". 
- Flip the name and print to Node, e.g., "Parker, Peter".


#### Part 2

- Create a regex pattern for a name that includes an apostrophe and/or hyphen, e.g., "Eva-Lotte O'Malley".
- Flip the name and print to Node, e.g., "O'Malley, Eva-Lotte".


#### Part 3

-  Using regex, capitalize the first letter of this sentence: "i should be capitalized."

-----

## Homework

`We'll be revisiting the MTA homework from w01/d03, using our new test-driven development skills to make it less of a hassle to implement.`

- Start from scratch, adhering as closely as possible to the "test-first" style of development

- Try to be as thorough as possible in handling different inputs, errors, and outputs.

- You might need to look up new RSpec matchers to write some tests, so make sure you have the documentation on hand:

	[rspec github](https://github.com/rspec/rspec-core)



`Below are the original instructions for MTA:`

### Week01-Day03

### 1. MTA - The NYC Subway System

- There are 3 subway lines:
	- The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
	- The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
	- The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
	- All 3 subway lines intersect at Union Square, but there are NO other intersection points.
		- For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.
- The program takes the line and stop that a user is getting on at and the line 
and stop that user is getting off at and prints the total number of stops for the trip.

---

#### Hints: 
- Get the program to work for a single line before trying to tackle multiple lines.
- Consider diagramming the lines by sketching out the subway lines and their stops and intersection.
- Make subway lines keys in a hash, while the values are an array of all the stops on each line.
- Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)
- Do not begin with implementing a user interface.  Begin with implementing the logic that calculates the distance between two stops in the subway system.

---

### Non-Required:

#### Back-End Bonus:
- Implement input validation
	- User MUST enter a line and station that is IN the subway network
	- If the user enters something else, your program should handle it gracefully
- Add the following line without making major modifications to your code: 
	- The Q line has the following stops: Times Square, Herald Square, Union Square, Canal St.
- Allow trains to have multiple intersection points
- Google 'ruby array intersect'.  Is there away that you might take advantage of ruby's ability to determine shared values between arrays?


####Final Thoughts:
- Will your code work if/when we add ALL of NYC's subway lines?

