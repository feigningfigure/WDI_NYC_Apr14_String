////////////////   MODEL  //////////////

var Juice = Backbone.Model.extend({
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

////////////////   VIEW (for collection)  //////////////

var JuiceView = Backbone.View.extend({

    tagName: "li",
    template: _.template($("#juice_template").html()),
    render: function() {
        this.$el.html(this.template({
            // toJSON just passes model attributes
            juice: this.model.toJSON()
        }));
        return this;
    }
});

var JuiceListView = Backbone.View.extend({
    initialize: function() {
        //ListView is an observer of the collection
        this.listenTo(this.collection, 'add', this.render);
    },
    //There's no template for ListView because every item will be generated dynamically

    render: function() {
        this.$el.empty();
        var self = this;
        _.each(self.collection.models, function(juice) {
            var juiceView = new JuiceView({
                model: juice
            });
            self.$el.append(juiceView.render().el);
        })
        return this;
    }
});



////////////////   COLLECTION  //////////////

var JuiceCollection = Backbone.Collection.extend({
    model: Juice
});

var juices,
    listView,
    vege,
    fruit,
    milkshake

    $(function() {
        juices = new JuiceCollection();

        listView = new JuiceListView({
            collection: juices,
            el: ("#juice-list")
        });

        vege = new Juice({
            ingredients: "celery",
            type: "vege",
            weight: "8oz"
        });

        fruit = new Juice({
            ingredients: "strawberry",
            type: "fruit",
            weight: "16oz"
        });

        milkshake = new Juice({
            ingredients: "vanilla",
            type: "milkshake",
            weight: "12oz"
        });

        juices.add(vege);
        juices.add(fruit);
        juices.add(milkshake);
    });


////////////////   VIEW (for one model)  //////////////

// var JuiceView = Backbone.View.extend({

//     initialize: function() {
//         this.listenTo(this.model, 'change', this.render)
//     },

//     template: _.template("<p><%= ingredients %><%= type %><%= weight %></p>"),

//     render: function() {
//         // this.$el references the jquery object; this.el references the DOM element
//         this.$el.empty();
//         //the view generates the el and then attach the view's el to the element in the html with template
//         this.$el.html(this.template(this.model.attributes));

//         return this;
//     }
// });


////////////////  Instances of Juice Model and Views //////////////
// var juice,
//     juiceView

//     $(function() {
//         juice = new Juice({
//             ingredients: "celery",
//             type: "vegetable",
//             weight: "12oz"
//         });

//         juiceView = new JuiceView({
//             model: juice,
//             el: $("#juice-mixer")
//         });

//         juiceView.render();

//     })
