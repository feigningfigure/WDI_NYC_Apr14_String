###Week07-Day04

#WORK IN YOUR OWN FOLDER ONLY!

---

## Morning Exercise


### Gladiators on the Rails


- Create a rails app caled `the_arena`

- It should have a `gladiator` model with the following attributes:
	- Name - string
	- Weapon - string
	- Victory Count - integer 
	
- Create all the components so that a get request to `/` will show a table of gladiatiors

- Seed your database using the Faker gem


---


## Homework

### Ajax on Rails

We're going to create an app that keeps track of the places we'd like to visit.

#### Specs

- Create a rails app caled `vacationr`

- It should have a `to_visit` model with the following attributes:

	- place - string
	- season - string
	- priority - integer
	
	(you can add more attributes, if you like)

- Seed the database using Faker

- ***Use Rails form helpers instead of HTML forms***
- ***Instead of creating two seperate forms, use a partial to dry your code***

- Make Create and Read functions.

- Each function should map to a Javascript function that includes an AJAX call within it.  For example, below is an example from class today of how a Read function could look:

```this is javascript:

function FetchTasks(){

  $.ajax({
    // the url where my JSON lives
    url: "/tasks.json",
    // the format I expect back (i.e. JSON)
    dataType: "json",
    // the HTTP verb I intend to use
    type: "get",
    // the callback function that fires on success (i.e. 200)
    success: function(data){
    
      $('#main_container').empty();

      data.forEach(function(task){
        $('#main_container').append("<p>"+task.task_text+"</p>"); 
      })

    }
  });

}

```

---------