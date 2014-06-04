
function setEventHandlers(){

  $("#add_quiz_button").click(function(){

  var $input = $("#quiz_input");
    $.ajax({
      url: '/quizzes',
      type: 'POST',
      dataType: 'json',
      data: {quiz_name: $input.val()}
    }).done(function(data){
      console.log(data);
      alert("You have added " + data);
      $input.val('');
    });

  });

  var timeOut = function (){ $.ajax({
    url: '/quizzes',
    type: 'GET',
    dataType: 'json'
  }).done(function(data){
    console.log(data);
    var $quiz_list = $("#quiz_list");
    $quiz_list.empty();
    data.quizzes.forEach(function(item){
      $quiz_list.append("<li>"+ item["title"] +"</li>")
    })
  });
};

setInterval(timeOut, 500);

};

$( document ).ready(function(){

  setEventHandlers();

});
