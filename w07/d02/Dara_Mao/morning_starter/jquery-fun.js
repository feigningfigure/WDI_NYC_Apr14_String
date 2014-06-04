$(document).ready(function(){

    $("p:first").addClass("intro");

    $("#less-link1").click(function(){
        $("#less-text1").slideToggle();
    });

    $("#less-link1").click(function(){
        $("body").css("background-color","yellow");
    });

    $("#less-link2").click(function(){
        $("#less-text2").slideToggle();
    });

    $("#less-link2").click(function(){
        $("#less-text2").append('<div><input type="text area" name="input"><button class="delete">Delete</button></div>');
     });

});


