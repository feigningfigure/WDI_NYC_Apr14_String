$(function(){

var authorCollection = new AuthorCollection;
var author = new Author({name: "Nietzsche"});
authorCollection.add(author);
var listView = new AuthorListView({ collection: authorCollection, el: $("#author-list") });
listView.render();

$('.new-author').on('submit', function(e){
  e.preventDefault();
  var newAuthorInput = $('.author-name');
  var authorName = newAuthorInput.val();
  newAuthorInput.val('');
  authorCollection.add({name: authorName});
});


// $('.new-book').on('submit', function(e){
//   e.preventDefault();
//   var newBookInput = $('.book-title');
//   var bookTitle = newAuthorInput.val();
//   newBookInput.val('');
//   bookCollection.add({title: bookTitle});
// });
})
