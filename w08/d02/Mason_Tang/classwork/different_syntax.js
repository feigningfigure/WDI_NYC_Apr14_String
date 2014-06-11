// These two definitions are the only ones
// that can stand alone.
// {{{
// This is a NAMED FUNCTION DECLARATION
function isOlder(obj_with_age_propery){
    return this.age > obj_with_age_propery.age;
}

// This is a FUNCTION EXPRESSION being stored in a variable
var isOlder = function(obj_with_age_propery){
    return this.age > obj_with_age_propery.age;
}
// }}}

// This is invalid syntax without the enclosing context
// of something like...
// var Person = {
    "isOlder": function(obj_with_age_propery){
        return this.age > obj_with_age_propery.age;
    }
// }

// This will mess with "isOlder" variables from
// higher-level scopes
isOlder = function(obj_with_age_propery){
    return this.age > obj_with_age_propery.age;
}

$.ajax({
    url: "/users",
    dataType: "json",
    type: "GET"
}).done(function(data) {

});









