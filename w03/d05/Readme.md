1###Week03-Day05

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request ti	tle must start with `hw_w03_submission`

---

## Morning Exercise:
### Superhero Extending

#### Create reusable code that can be applied to multiple classes

### Your user stories:

* Define a Human class. It should have attributes like name, age and gender. It should include a `speak` method that says something like:  ""Hi.  I'm so-and-so, a [some number]-year-old [gender]."

* Using Faker, create 5 instances of Humans with random names, ages and genders.

* Define a Dog class.  It should have attributes like name and owner. It should include a `speak` method appropriate to a dog.


#### Bonus

* Define a Superhero module with methods like `fly` and `save_people`.

---

##Planets on Rails!

Create a Rails app with the below CRUD functionality for a single model: 

###PLANET MODEL

| column | datatype | 
|-----|-----|
| name|string|
| image_url| string |
| diameter | integer |
| mass|integer |
| life|boolean|


### ROUTES / CONTROLLER ACTIONS / BEHAVIORS

| HTTP Verb | Path | Controller#Action | Behavior |
|-----|-----|-----|-----|
|GET|/planets|planets#index|display a list of all planets|
|GET|/planets/new| planets#new | return a form for creating a new planet|
|POST|/planets| planets#create | create a new planet |
|GET |/planets/:id| planets#show | display a specific planet |



###STYLING YOUR APP IS NON-OPTIONAL.


***BONUS***

- Create a new table for `moons`
- All moons should belong to a planet
- Create the functionality needed to add moons to the database  
- Update your views so that when viewing a planet, a user can also see what moons belong to it. 

**EXTRA BONUS**

- Implement functionality to `edit` and `delete` planets and/or moons.


###***Remember*** - Make sure your database works in rails console first.  Only then should you worry about routes, controller actions, and views ###






---



#WORK IN YOUR OWN FOLDER ONLY!

