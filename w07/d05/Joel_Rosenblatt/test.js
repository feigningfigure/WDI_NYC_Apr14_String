$(document).ready(function(){
  $("#go").click(function() {
    var $urly = "http://graph.facebook.com/" + $("#inp").val();
    $("#head").load($urly);
  });
});
