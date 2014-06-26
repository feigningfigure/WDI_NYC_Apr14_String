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

    initialize: function() {
        this.listenTo(this.model, 'change', this.render)
        // (listening to, listening for an action (observation), Reaction/to do (action))
    },
    //pass any html in the template. There's no server, so we dont need %%
    template: _.template('<h2><%= make %><%= type %></h2><h3><%= color %></h3>'),

    //write the function that performs the action in the listenTo( line21 )
    render: function() {
        //empty the div
        this.$el.empty();
        //with jquery, to update the view. using templating to pass and display information. Need to define tempalte in line 25.
        this.$el.html(this.template(this.model.attributes));
        return this;
    }
});

//namespace, want the variables as global variables
var car;
var carView;

//on load function
$(function() {

    car = new Car({
        make: "Honda",
        type: "Civic",
        color: "Red"
    });
    carView = new CarView({
        model: car,
        el: $("#car-holder")
    });
    carView.render();
});
