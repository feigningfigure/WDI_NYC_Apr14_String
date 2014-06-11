
// ************ Model *************

function Person(personJSON){
    this.name = personJSON.name;
    this.id = personJSON.id;
}


// ************ View *************
function PersonView(){
    this.model = model;
    this.el = undefined;
}
    PersonView.prototype.render = function(){
        var newElement = $('<li>').html(this.model.name);
        this.el = newElement;
        return this
    }

// ************ Collection *************
function PeopleCollection (){
    this.models = {};
}

PeopleCollection.prototype.add = function(){
    var newPerson  = new Person(personJSON);
    this.models[personJSON.id] = newPerson;
    $(this).trigger('monkey');
}

// paramObject whats being passed in the inputs form
PeopleCollection.prototype.create = function(paramObject){
    // AJAX call
    // Create of the CRUD
    $.ajax ({
        url: '/people',
        method: 'post',
        datatype: json,
        data: {person: paramObject}
        // so we could pass strong params
    }).done(function(data){
        // Insert callback code here
        // add new instance of People
        peopleCollection.add(data);
    })
}

PeopleCollection.prototype.fetch = function () {
    var self = this;
    $.ajax ({
        url: '/people',
        method: 'get',
        datatype: json
    }).done(function(){
        for (id in data){
            self.add(data[id]);
        }
    })
};

function displayEntireCollection(){
    $('.people').html('');
    for(id in peopleCollection.models){
        var person = peopleCollection.models[id];
        var personView = new PersonView(person);
        $('.people').append(personView.render().el);
    }
}


var peopleCollection = new PeopleCollection();


// document ready
$(function(){

        peopleCollection.fetch();

        $(peopleCollection).on('monkey', function(){
            displayEntireCollection();
        })

    $('.name-form').on('submit', function(e){
        console.log(e);
        e.preventDefault();
        var newNameInput = $('.name-form input[name="name"]')
        // Insert ajax call below
        peopleCollection.create({name: newNameInput.val()});
        // need to clear the input
        newNameInput.val('');

    })

})


