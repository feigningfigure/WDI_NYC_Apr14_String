
// ************ Model *************
function Person(personJSON){
  this.name = personJSON.name;
  this.id = personJSON.id;
}

// ************ View *************
function PersonView(model){
  this.model = model;
  this.el = undefined;
}



// ************ Collection *************

function PeopleCollection(){
  this.models = {};
}



$(function(){
  // e is convention for event
  $('.name-form').on('submit', function(e){
    console.log(e);
    e.preventDefault();
    // var newName = $('.name-form input[name="name]').val();
    // INSERT AJAX CALL BELOW
    
  });

})

