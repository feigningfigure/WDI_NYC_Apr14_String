$ (document).ready(function(){
  // Global var underscore template
  var beastTemplate = _.template($("beastTemplate").text());
  // beast List to be used as a jQuery variable
  var $beast = $("#beast");

    $.ajax({
        url: "/users",
        type: "POST", // or should this be GET?
        dataType: "json",
        data: beast
    }).done(function(data)



});
