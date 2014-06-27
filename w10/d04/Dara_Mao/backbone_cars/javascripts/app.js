//================ MODEL =======================
var Car = Backbone.Model.extend({

    initialize: function() {
        console.log("A new car has been made")
    },

    //attributes of car model
    defaults: {
        make: "",
        type: "",
        color: "",
    }

});

//================ VIEW =======================
var CarView = Backbone.View.extend({


    // initialize: function() {
    //     this.listenTo(this.model, 'change', this.render)
    //     // (listening to, listening for an action (observation), Reaction/to do (action))
    // },
    // //pass any html in the template. There's no server, so we dont need %%
    // template: _.template('<h2><%= make %><%= type %></h2><h3><%= color %></h3>'),


    //VIEW render for one MODEL :
    //write the function that performs the action in the listenTo( line21 )

    tagName: "li",
    template: _.template($("#car_template").html()),
    render: function() {
        this.$el.html(this.template({
            car: this.model.toJSON()
        }));

        //empty the div
        // this.$el.empty();
        // //with jquery, to update the view. using templating to pass and display information. Need to define tempalte in line 25.
        // this.$el.html(this.template(this.model.attributes));
        return this;
    }
});

//namespace, want the variables as global variables
// var car;
// var carView;

//on load function
// $(function() {

//     // Morning: View and Model only
//     // car = new Car({
//     //     make: "Honda",
//     //     type: "Civic",
//     //     color: "Red"
//     // });
//     // carView = new CarView({
//     //     model: car,
//     //     el: $("#car-holder")
//     // });
//     // carView.render();
// });


// ======= LIST VIEW ==================
var CarListView = Backbone.View.extend({
    initialize: function() {
        this.listenTo(this.collection, 'add', this.render);
        this.listenTo(this.collection, 'remove', this.render);
    },
    render: function() {
        //going through each of the array of models
        //the plan is to create new instances of CarView inside this render function
        this.$el.empty();
        var self = this;
        //self is the instance of the CarListView
        //underscore .each or jquery.each to iterate through, to create new instances of Car
        _.each(self.collection.models, function(car) {
            var carView = new CarView({
                model: car
            });
            //append each carView to the collection
            // a new instance of carView was created right above, it needs to go the render and pick up changes
            //render first, then el (call the render and get the changes), and then call the element
            self.$el.append(carView.render().el);
        })
        return this;
    }
})


// ======= COLLECTION ==================
var CarCollection = Backbone.Collection.extend({
    model: Car
});

var cars,
    listView,
    honda,
    toyota,
    car


    $(function() {

        cars = new CarCollection();

        listView = new CarListView({
            //because we called it this.collection on line 81
            collection: cars,
            el: $('#car-list')
        });

        honda = new Car({
            make: "Honda",
            color: "Red",
            type: "Civic"
        });

        toyota = new Car({
            make: "Toyota",
            color: "Black",
            type: "Whatever"
        });


        car = new Car({
            make: "BMW",
            color: "Blue",
            type: "Civic"
        });

        cars.add(car);
        cars.add(honda);
        cars.add(toyota);

    });
