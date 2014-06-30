var Penguinapp = Penguinapp || {
    Models: {},
    Collections: {},
    Views: {}
};

Penguinapp.initialize = function() {
    var collection = new Penguinapp.Collections.PenguinCollection();
    var listView = new Penguinapp.Views.PenguinListView({
        //referencing ListView line 14 +
        collection: collection,
        el: $('.penguin-list')
    });
    // listView.render();
    collection.fetch();

    //we need to add a listener prevent the default from overriding
    //1. grab the element that we want to listen on
    //.find grabs the elmenet within the scope

    $('.penguins').find('form').on("submit", function(e) {
        e.preventDefault();
        var penguinName = $('input').val();
        $('input').val('')
        // append to PV, we need to tell rails to create a database for the View
        //AJAX call
        //why does it respond to the ajax call


    })
}


$(function() {
    Penguinapp.initialize();
});
