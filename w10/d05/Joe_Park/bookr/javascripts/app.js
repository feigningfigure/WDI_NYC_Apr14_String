function setEventListeners(){

  $('#new-author').on('submit', function(evt){
    evt.preventDefault();
    var nameField = $('#author-name');
    var authorName = nameField.val();
    nameField.val('');
    // Backbone creates a model and adds by itself...
    authorCollection.add({ name: authorName });
  });

}



// ******* Globals *********
var authorCollection,
    authorListView;
// *************************


$(function(){

authorCollection = new AuthorCollection;
authorListView = new AuthorListView({ collection: authorCollection, el: $('#author-list') });
var author = new Author({ name: "Stephen King" });
authorCollection.add(author);

setEventListeners();

});