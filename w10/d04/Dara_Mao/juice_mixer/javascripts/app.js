////////////////   MODEL  //////////////

var Juice = Backbone.model.extend({
    // initialize function is to pass in the initial values of the attributes as defined in defaults as follows:
    initialize: function() {
        console.log("received an order for a cup of juice")
    },
    defaults: {
        ingredients: "",
        type: "",
        weight: "",
    }
});


////////////////   VIEW  //////////////

var JuiceView = Backbone.View.extend({

    initialize: function() {
        this.listenTo(this.model, 'change', this.render)
    },

    template: _.template("<p><%= ingredients %><%= type %><%= weight %></p>"),

    render: function() {
        // this.$el references the jquery object; this.el references the DOM element
        this.$el.empty();
        //the view generates the el and then attach the view's el to the element in the html with template
        this.$el.html(this.template(this.model.attributes));

        return this;
    }
});


////////////////  Instances of Juice Model and Views //////////////
var juice;
var juiceView;

$(function() {
    juice = new Juice({
        ingredients: "celery",
        type: "vegetable",
        weight: "12oz"
    });

    juiceView = new JuiceView({
        model: juice,
        el: $("#juice-mixer")
    });

    juiceView.render();

})
