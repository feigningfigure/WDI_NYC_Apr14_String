// you can override default options globally, so they apply to every .expander() call
// $(function(){ }); alternate version of document.ready
$(document).ready(function() { // adding a class solution
    // $('p').first().addClass('intro'); another version through css
    $('p:first').addClass("intro"); //add a class
});

$(document).ready(function() {
    $('less-link1').click(function() {
        $('less-text1').slideToggle();
    });
});
