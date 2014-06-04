// $(function(){ });
$(document).ready(function() {
  $("p").first().addClass("intro");
  // $('p:first').addClass("intro");
});

$(document).ready(function() {
  $("less-link1").click(function)

});





$('#less-link1').css({height:'20px', overflow:'hidden'});
$('#less-text1').on('click', function() {
    var $this = $(this);
    if ($this.data('open')) {
        $this.animate({height:'20px'});
        $this.data('open', 0);
    }
    else {
        $this.animate({height:'100%'});
        $this.data('open', 1);
    }
});
