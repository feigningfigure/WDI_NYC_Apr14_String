// author model ///

var Author = Backbone.Model.extend({

    initialize: function() {
        console.log("an author has been registered");
        //Everytime i create an author mode, theres a book collection
        this.set("books", new BookCollection());
    },

    defaults: {
        name: ""
    }
});

// author view ////
var AuthorView = Backbone.View.extend({
    initialize: function() {
        this.listenTo(this.model, 'change', this.render)
    },

    tagName: 'li',
    template: _.template($("#author-template")),
    render: function() {

        this.$el.empty();
        this.$el.html(this.template(this.model.attributes));
        var listView = new BookListView({
            collection: this.model.get("books"),
            el: this.$el.find(".books")
            //find books for this author (within the scope of this el, which is this author-template html mode)
        });

    }
});



// author collection///
var AuthorCollection = Backbone.Collection.extend({
    model: Author
});
