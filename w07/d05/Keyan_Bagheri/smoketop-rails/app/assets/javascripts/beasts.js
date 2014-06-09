function addEventListeners(){

  var beastTemplate = _.template($("#beastTemplate").text());
  beast_list = $("beast-list");



  var show = function(){
    $.ajax({
      url: '/beasts',
      type: "GET",
      dataType: "json"
    }).done(function(data){
      var $beast_list = $("#beast-list");
      $beast_list.empty();
      $beast_list.append("<p>" + beastTemplate(data) + "</p>")
      console.log(beast_list);
    });
  };

  $(".diet").click(function(){
    var diet = $(this).attr('id')
    var diet_group = []
    $.ajax({
      url: "/beasts?" + diet,
      type: "POST",
      dataType: "json",
      data: diet
    }).done(function(data) {
      var $beast_list = $("#beast-list");
      $beast_list.empty();
      $beast_list.append("<p>" + beastTemplate(data) + "</p>")
    })
  });
  show();
};

$(function(){

  addEventListeners();

});