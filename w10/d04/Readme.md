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


## Vehicles

Today in class we built a car model and a car collection.

`Build out the project's functionality by adding:`

- VehicleModel
	- A cars collection is assigned to its 'cars' attribute.
	
- VehicleCollection

- VehicleView
	- renders its own template with a ul
	- creates a new CarListView and passes the VehicleView's ul as the el of the CarListView
	- calls a render on the new car list view
	
- VehicleListView
	- renders all vehicle views

You do not need to build a UI for the creation of these objects.  Just create some of them in a window onload callback to verify that they are working.

---

## Videos:

`Check out these videos by Proto instructor, Andrew!`


###Scratch My Backbone
- A relativly brief intro to backbone Model + View
- http://youtu.be/lfDVSjwYxVc

###Backbone_0_one
- Backbone Model, View, & Collection
- http://youtu.be/kmC2b6NDBn0

