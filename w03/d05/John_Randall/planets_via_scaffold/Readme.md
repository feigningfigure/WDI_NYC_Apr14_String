

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

