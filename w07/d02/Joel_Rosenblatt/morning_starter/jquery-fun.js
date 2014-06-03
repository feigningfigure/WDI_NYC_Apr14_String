$(document).ready(function(){

  $('p:first').addClass("intro");

  //Could probably make a function out of this->
  // $("#less-link1").click(function(){
  //   var moreAndLess = $("#less-text1").is(':visible') ? 'More' : 'Less';
  //   $(this).text(moreAndLess);

  //   $("#less-text1").slideToggle();
  // });

  // $("#less-link2").click(function(){
  //   var moreAndLess = $("#less-text2").is(':visible') ? 'More' : 'Less';
  //   $(this).text(moreAndLess);

  //   $("#less-text2").slideToggle();
  // });

//Function to show or hide
  var showme = function(link_for, element_to){
    link_for.click(function(){
    var moreAndLess = element_to.is(':visible') ? 'More' : 'Less';
    $(this).text(moreAndLess);

    element_to.slideToggle();
  });
  }
  //Invocation
  showme($("#less-link1"), $("#less-text1"));

  showme($("#less-link2"), $("#less-text2"));

});
