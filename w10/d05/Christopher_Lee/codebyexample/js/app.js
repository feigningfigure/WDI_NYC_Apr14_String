(function ($) {
    // ***Model***
    var Book = Backbone.Model.extend({
        defaults:{
            coverImage:"img/placeholder.png",
            title:"No title",
            author:"Unknown",
            releaseDate:"Unknown",
            keywords:"None"
        }
    });

    //***View***

    var BookView = Backbone.View.extend({
        tagName:"div",
        className:"bookContainer",
        template:$("#bookTemplate").html(),

        render:function () {
            var tmpl = _.template(this.template); //tmpl is a function that takes a JSON object and returns html

            this.$el.html(tmpl(this.model.toJSON())); //this.el is what we defined in tagName. use $el to get access to jQuery html() function
            return this;
        }
    });

    //***Collection***

    var Library = Backbone.Collection.extend({
    model:Book
    });

    var LibraryView = Backbone.View.extend({
        el:$("#books"),
        events:{
            "click #add":"addBook"
        },
        initialize:function () {
            this.collection = new Library(books);
            this.render();
         
            this.collection.on("add", this.renderBook, this);
        },
        render: function(){
            var that = this;
            _.each(this.collection.models, function(item){
                that.renderBook(item);
            }, this);
        },
        addBook:function (e) {
            e.preventDefault();

            var formData = {};

            $("#addBook div").children("input").each(function (i, el) {
                if ($(el).val() !== "") {
                    formData[el.id] = $(el).val();
                }
            });

            books.push(formData);

            this.collection.add(new Book(formData));
        },
        renderBook:function(item){
            var bookView = new BookView({
                model: item
            });
            this.$el.append(bookView.render().el);
        }

    });

    var books = [{title:"JS the good parts", author:"John Doe", releaseDate:"2012", keywords:"JavaScript Programming"},
        {title:"CS the better parts", author:"John Doe", releaseDate:"2012", keywords:"CoffeeScript Programming"},
        {title:"Scala for the impatient", author:"John Doe", releaseDate:"2012", keywords:"Scala Programming"},
        {title:"American Psyco", author:"Bret Easton Ellis", releaseDate:"2012", keywords:"Novel Splatter"},
        {title:"Eloquent JavaScript", author:"John Doe", releaseDate:"2012", keywords:"JavaScript Programming"}]

    var libraryView = new LibraryView();

})(jQuery);
