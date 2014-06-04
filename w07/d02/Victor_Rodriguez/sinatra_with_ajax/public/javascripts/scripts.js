  
function setEventHandlers(){

  $("#add_quiz_button").click(function(){
    console.log("Submit button has been clicked");

    var $input = $("#quiz_input");

    $.ajax({
      url: '/quizzes',
      type: 'POST',
      dataType: 'json' ,
      data: {quiz_name: $input.val()},
    }).done(function(data){
      console.log(data);
      alert("You have added " + data);
      $input.val('');
    });

  });

  var $show_button = $("#show_button");

  $show_button.click(function(){
    console.log("Show button has been clicked");

//setInterval(function(){ #Initial Attempt at Set Interval but created endless loop.
    $.ajax({
      url: '/quizzes',
      type: 'PUT',
      dataType: 'json',
    }).done(function(data){
      console.log(data);
      var $quiz_list = $("#quiz_list");
      $quiz_list.empty();
      data.quizzes.forEach(function(item){
        $quiz_list.append("<li>"+ item["title"] +"</li>")
      })
//      },5000) 
    })
    })  
  });

var $update_button = $("#update_button");

    $.ajax({
      url: '/quizzes',
      type: 'PUT',
      dataType: 'json',
    }).done(function(data){
      console.log(data);
      var $quiz_list = $("#quiz_list");
      $quiz_list.empty();
      data.quizzes.forEach(function(item){
        $quiz_list.append("<li>"+ item["title"] +"</li>")
      })
    })
}




$( document ).ready(function(){

  setEventHandlers();

});