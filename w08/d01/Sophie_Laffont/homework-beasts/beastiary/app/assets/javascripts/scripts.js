
function setEventHandlers(){

var beastTemplate = _.template($("#beastTemplate").text()); 

  $('form').on('click', '.diet-button', function() {
     var $buttonValue= $(this).val();

      $.ajax({
         url: '/beasts',
         type: 'GET',
         dataType: 'json',
         data: {"diet": $buttonValue}

            }).done(function(data){
               // console.log(data);
               $("#beast-list").empty()
                  for (i=0; i<data.length; i++){
                    // this is part of underscore template
                    beastHTML = beastTemplate(data[i]);
                    $("#beast-list").append(beastHTML);
                  };
   });
});

  var beastTemplate = _.template($("#beastTemplate").text()); 

  $('form').on('click', '.diet-button', function() {
     var $buttonValue= $(this).val();

      $.ajax({
         url: '/beasts',
         type: 'POST',
         dataType: 'json',
         data: {}

            }).done(function(data){
               // console.log(data);
               $("#beast-list").empty()
                  for (i=0; i<data.length; i++){
                    // this is part of underscore template
                    beastHTML = beastTemplate(data[i]);
                    $("#beast-list").append(beastHTML);
                  };
   });
});
}

$( document ).ready(function(){


   setEventHandlers();

});
