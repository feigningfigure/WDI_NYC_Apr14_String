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
    template: _.template($("#author-template").html()),
    render: function() {

        //this.$el is the template above with the author-template passed into it
        this.$el.empty();
        this.$el.html(this.template(this.model.attributes));
        var listView = new BookListView({
            collection: this.model.get("books"),
            el: this.$el.find(".books")
            //find books for this author (within the scope of this el, which is this author-template html mode) .find lets you scope it inward, jquery  checks for every html element in that name
        });
        listView.render();
        return this;
    }
});

// author listView ////
var AuthorListView = Backbone.View.extend({
    initialize: function() {
        this.listenTo(this.collection, 'all', this.render);
    },
    render: function() {
        var self = this;
        this.$el.empty();
        _.each(this.collection.models, function(author) {
            var authorView = new AuthorView({
                model: author
            });
            //use self, "this" refers to each of these authorview and not the authorListView
            self.$el.append(authorView.render().el)
        })
        return this;
    }
});


// author collection///
var AuthorCollection = Backbone.Collection.extend({
    model: Author
});



$(function() {


    // new Instances ///
    var author = new Author({
        name: "stephen king"
    });
    var authorCollection = new AuthorCollection;

    var authorListView = new AuthorListView({
        collection: authorCollection,
        el: $("#author-list")
    });

    authorCollection.add(author);

    //listener for adding a new author and display the author
    $(".new-author").on("submit", function(e) {
        e.preventDefault();
        //prevent html default reload
        var nameField = $(".author-name");
        var authorName = nameField.val();
        nameField.val("");
        authorCollection.add({
            name: authorName
        });
        //backbone will create a model author for us

    })

})
