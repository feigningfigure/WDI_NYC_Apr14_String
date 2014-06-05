function setEventHandlers(){

    var $input = $("#quiz_input");

    $("#add_quiz_button").click(function() {
        console.log("Submit button has been clicked");

        $.ajax({
            url: '/quizzes',
            type: 'POST',
            dataType: 'json' ,
            data: {quiz_name: $input.val()},
        }).done(function(data) {
            console.log(data);
            $input.val('');
        });

    });

    var $show_button = $("#show_button");
    var $quiz_list = $("#quiz_list");

    $show_button.click(function() {
        console.log("Show button has been clicked");

        $.ajax({
            url: '/quizzes',
            type: 'GET',
            dataType: 'json',
        }).done(function(data) {
            console.log(data);
            $quiz_list.empty();
            data.quizzes.forEach(function(quiz) {
                // This is a little redundant with the contents of index.erb
                // (line 7), but since we're thinking about HTTP headers and
                // not app design right now, it's not too much of a bother.
                $quiz_list.append("<li>" + quiz.quiz_name + "</li>")
            });
        });
    });

}

$(document).ready(function() {
    setEventHandlers();
});
