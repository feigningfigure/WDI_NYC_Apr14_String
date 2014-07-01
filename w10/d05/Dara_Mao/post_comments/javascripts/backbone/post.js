///////////  Post Model /////////////
var Post = Backbone.Model.extend({
    initialize: function() {
        console.log("a new post has been created")
        // A post will, by default,  have a collection of comments

    },
    defaults: {
        news: ""
    }
});


///////////  Post Collection /////////////
