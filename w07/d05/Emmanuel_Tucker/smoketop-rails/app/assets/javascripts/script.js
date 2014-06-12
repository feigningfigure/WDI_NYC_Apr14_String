function setEventHandlers(){

     $("#").click(function(){
          console.log("");

          var $input = $("#");

          $.ajax({
               url: '/',
               type: 'POST',
               dataType: 'json' ,
               data: {_name: $input.val()},
          }).done(function(data){
               console.log(data);
               alert(" " + data);
               $input.val('');
          });

     });
