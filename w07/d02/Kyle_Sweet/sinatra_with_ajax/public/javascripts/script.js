$("#add_quiz_button").click(function(){
 console.log("clicked");

 var $input = $("#quiz_input");//good practice to keep in $ to keep track of variable calls down the page.

//below is a hash
 
 $.ajax{//ajax takes one parameter and it's always a hash.
  url:'/quizzes',//must have URL to tell it where to go.
  type:'POST',//
  dataType:'json',//sinatra doesn't know how to process json, so require json.
  data:{quiz_name: $input.val()},//data is an optional field - the rest you need.
 })
});

}

$( document ).ready(function(){

  setEventHandlers();

  });