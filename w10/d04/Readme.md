	###Week10-Day04

#WORK IN YOUR OWN FOLDER ONLY!

---

## Morning Exercise


### JS Closures

#### Uh Oh -- the following code doesn't work!

`Rewrite the following code, using what you know about closures, so that it works.`

function handle() {
	console.log(message);
}
function setAlarm(message, timeout) {
	setTimeout(handle, timeout);
}

setAlarm("Wake UP!", 1000);


------------


## Juice Shack


Build out functionality for a:

- JuiceModel
	- An ingredients collection assigned to its 'ingredients' attribute.
- JuiceCollection
- JuiceView
	- renders own template with a ul
	- creates new IngredientListView and passe the JuiceView's ul as the el of the IngredientListView.
	- calls render on the new ingredient list view.
- JuiceListView
	- renders all juice views

You do not need to build a UI for the creation of these objects.  Create some of them in a window onload callback to verify that they are working.



