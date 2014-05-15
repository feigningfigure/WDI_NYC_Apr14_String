Topping.delete_all
IceCreamFlavor.delete_all


flavors = [
	"Original", 
	"Vanilla", 
	"Chocolate", 
	"Strawberry", 
	"Coconut", 
	"Coffee"]

mixins = [
	"bananas", 
	"almonds", 
	"blueberries", 
	"pineapple", 
	"apples", 
	"walnuts", 
	"coconut", 
	"chips"]


flavors.each do |flavor|
  IceCreamFlavor.create({name: flavor})
end

# Not sure if this is how you increment or should I do random???
 
mixins.each do |mixin|
Topping.create({name: mixin})

