###Week03-Day04

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request ti	tle must start with `hw_w03_submission`

---

## Morning Exercise:
### Rectangles (and Kittens)

#### Make Rectangles!

- Write a Sinatra application

- Should have a response for a `get` request to '/'
	- The page should display 1 centered, blue rectangle (any size).
		
- Should have a response for a `get` request to '/:num'
	- The page should display `:num` centered, blue rectangles (any size).


### Bonus

#### Kittens!

- Create a Sinatra application

- Should have a `get` request to '/kittens/:num' 
	- The page should display `:num` centered kitten images.
	- The images should all be of a different size.

##### Hint
- Check out:  http://PlaceKitten.com/


---


## Movies!
- Create a Rails application
	- Using `httparty` to make requests to [OMDbapi](http://www.omdbapi.com/) , retrieve information about a movie
	- Your page should have a form where a user can enter a movie title
	- Upon sumbit, that movie's information should be shown
		- Must Include: Title, Year, Rated, Released, Runtime, Genre, Director, Writer, Actors, Plot, Movie Poster
	- Create a `my_movies` table in a new `wdi_movies` database
	- ALL the fields returned by the api should be included in the table
- When a user enters in a movie title, that film's data should be automatically inserted into the database.
- A `get` request to '/all' should respond with an html table displaying ALL the all the film information in your database

#### Bonus!

- Add a feature that allows the user to delete a movie entry from the database.   
- Use the `seed` file to pre-populate your database


