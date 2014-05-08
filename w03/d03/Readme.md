###Week03-Day3

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `hw_w03_submission`

---

##Morning Exercise:
### Lunch Bot


- Create a folder in your personal folder called `lunch_bot`

- Write a Sinatra Application using ActiveRecord within that folder

- Create a new database called `wdi_lunch`
- Create a new table called `lunches`
- Columns should include:
- lunch_name as string
- rating as smallint
- Populate your table with three lunch spots

- Write a `get` request to '/' that should:
- display the your lunch spots and their ratings


#### Bonus

- display a link to `/add`
- create a form to add lunch spots
- write a `post` request to '/' should enter the form data into the database


##Part 2: 
###Photo Hackathon

It's time to build a Photo App.

####User Stories:

- Users should be able to Create, Read and Update photos.
- Users should be able to click a "save" button/link on each photos that adds them to the database.

###Requirements:

- Use **Sinatra**, **PostgresSQL** and **ActiveRecord** gems.

- Use one or both of the following API Endpoints in your application:

	- **https://api.instagram.com/v1/media/popular**
	- **https://api.imgur.com/3/gallery.json**

- You can find information about these two APIs at:

	- [Imgur API Docs](https://api.imgur.com/)
	- [Instagram API docs](http://instagram.com/developer/)

- Implement a Model for "Photo" with AT LEAST the following Schema (you can add additional fields, as well):

####Photo

| id | title | description | url|
|---|--------|-------------|---------|
| integer | varchar(255)| text | text |

- Use ActiveRecord to write your CRUD methods (you can also additional methods or include custom modules)

```
class Photo < ActiveRecord::Base
	
	# whatever else you want
	
end

```

