###Week04-Day01

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `hw_w04_submission`

---

## Morning Exercise 

### Who stole the cookie from the cookie jar?

- Create a rails application called `cookie_jar`

- Create a `CookieWatcher` model
- name : string
- cookies : int

- A get request to `/` should show the lyrics:
- [accuser's name]: "Who stole the cookie from the cookie jar? [thief's name] stole the cookie from the cookie jar."
- [thief's name]: "Who, me?"
- [accuser's name]: "Yes, you!"
- [thief's name]: "Not me! Couldn't be! Wasn't me!"
- [accuser's name]: "Then who?"

- When someone is chosen as a thief, their `cookies` should be incremented because they clearly stole the cookie


**Seed the table with these names**

spring_wdi = ["Joe", "Artem", "John R.", "Wilson", "Nelson", "Chris B.", "Chris Lee", "Ben", "Joel", "Declan", "Andrew", "Manny", "Nancy", "Dara", "Jonathan", "Liz", "Jane", "Victor", "David", "Kyle", "Keyan", "Mason", "Sophie", "Zack"]

---


##Part 1
- Come up with 2 models that are related 
	- `example:` Bands, Songs
	- `example:` Teams, Players
- Create an `ERD` for your models	
	- [Sample ERD](http://1.bp.blogspot.com/_WYQFMaTdtuY/TMdAtlB0QyI/AAAAAAAAAB4/KqoDUKOHSeU/s1600/ERD_Diagram.jpg)
	- You can either do this with Google Docs, draw it on a board and take a picture, or use additional software
		- [Free ERD Software](http://www.gliffy.com/index-a-875550344.php)
	- Put a copy of the ERD in your Rails app's folder
- Create a rails application with your chosen models
	- Include both models and create the logical associations 
- ***Test the functionality of your database in Rails console BEFORE working on routes, controllers, and views***
- Write a seed file to pre-populate your database
- A user should be able to ***Create*** and ***Edit*** both, as well as set relationships
	- `example:` Create a Song and have it associated with a Band
	- **NOTE** - Make sure your Create function fully works before you take on the Edit function
	
**NOTE** - Refer to today's in class cookbook example for guidance.