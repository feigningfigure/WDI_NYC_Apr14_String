var $test = $("#quiz_list li").first();

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
    // alert("You have added " + data)
      $input.val('');
      });
    });

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
        $quiz_list.prepend("<li class='quiz-title'>"+ item["title"] +"</li>")
      })
      $test = $("#quiz_list li").first();
     })

}

function pageUpdate() {
  var $quiz_list = $("#quiz_list");
    $.ajax({
      url:'/quizzes',
      type: 'GET',
      dataType: 'json'
    }).done(function(data){
      console.log(data);
      $quiz_list.empty();
      data.quizzes.forEach(function(item){
        $quiz_list.prepend("<li class='quiz-title'>"+ item["title"] +"</li>")
      })
      //$("#quiz_list li").first().addClass("highlight").append( "   (NEW)" );

      $interval_two = setInterval(function(){ $("#quiz_list li").first().toggleClass("highlight")}, 200);
      $("#quiz_list li").first().addClass("highlight flashed").append( "   (NEW)" );
      setTimeout(function(){clearInterval($interval_two)}, 1000);
     })
}

$( document ).ready(function() {
  setEventHandlers();
  // you don't want this to go on forever
  // you want it to stop after someone adds something
  setInterval(function(){pageUpdate()},2000);

});
