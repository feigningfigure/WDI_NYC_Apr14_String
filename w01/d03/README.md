###Week01-Day03

#WORK IN YOUR OWN FOLDER ONLY!

##Part 1 - Loops
- Write a program called animal_noises.rb.  It asks the user to select an animal and then responds with the appropriate sound in the form of a string.

```
output: What animal would you like to hear?
input: cat
output: Meow!
output: What animal would you like to hear?
input: dog
output: Woof!
```

- Check every number from 1 through 200.  If the number is even, print the number to the terminal.  If it's odd, print the word "odd" to the Terminal.

##Part 2
### MTA - The NYC Subway System

- Check your folder for the starter code `mta.rb`.
- There are 3 subway lines:
  - The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
  - The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
  - The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
  - All 3 subway lines intersect at Union Square, but there are NO other intersection points.
    - For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.
- The program takes the line and stop that a user is getting on at and the line
and stop that user is getting off at and prints the total number of stops for the trip.

---

####Hints:
- Get the program to work for a single line before trying to tackle multiple lines.
- Consider diagramming the lines by sketching out the subway lines and their stops and intersection.
- Make subway lines keys in a hash, while the values are an array of all the stops on each line.
- Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)
- Do not begin with implementing a user interface.  Begin with implementing the logic that calculates the distance between two stops in the subway system.

---

###Non-Required:

####Back-End Bonus:
- Implement input validation
  - User MUST enter a line and station that is IN the subway network
  - If the user enters something else, your program should handle it gracefully
- Add the following line without making major modifications to your code:
  - The Q line has the following stops: Times Square, Herald Square, Union Square, Canal St.
- Allow trains to have multiple intersection points
- Google 'ruby array intersect'.  Is there away that you might take advantage of ruby's ability to determine shared values between arrays?


####Final Thoughts:
- Will your code work if/when we add ALL of NYC's subway lines?
