// book model ///

var Book = Backbone.Model.extend({

    initialize: function() {
        console.log("a book has been published");
    },

    defaults: {
        title: ""
    }
});


// book collection///
var BookCollection = Backbone.Collection.extend({
    model: Book
});
