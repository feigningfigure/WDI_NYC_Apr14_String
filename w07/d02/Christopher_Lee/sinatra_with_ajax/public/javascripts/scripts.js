
function setEventHandlers(){
  $('#add_quiz_button').click(function(){
    console.log("Submit button has been clicked");

  var $input = $("#quiz_input");

  // url of where we want ajax request to go to is the post route (/quizzes)
  $.ajax({
    url:'/quizzes',
    type: 'POST',
    dataType: 'json',
    // you don't always need data
    // data is your params
    data: {quiz_name: $input.val()},
    }).done(function(data){
    console.log(data);
    // this is what is being sent back
    // ajax function finishes when response comes back
    // data was the response from the server
    alert("You have added " + data)
      $input.val('');
      });
    });
  var $show_button = $("#show_button");

  $show_button.click(function(){
    console.log("Show button has been clicked");
    //ajx takes one parameter, and its a hash

    var $quiz_list = $("#quiz_list");
    $.ajax({
      url:'/quizzes',
      type: 'GET',
      dataType: 'json'
    }).done(function(data){
      console.log(data);
      // use underscore's each
      $quiz_list.empty();
      data.quizzes.forEach(function(item){
        $quiz_list.append("<li>"+ item["title"] +"</li>")
      })
    })
  });

}
// $ make something jQuery

$( document ).ready(function() {
  setEventHandlers();
});


