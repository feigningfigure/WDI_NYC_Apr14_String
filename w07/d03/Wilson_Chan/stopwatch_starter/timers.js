var seconds = 0;
var timerID = 0;

function updateTimer(){
    seconds++;
    $('#timer').text('Time elapsed: ' + seconds);
}

$(function() {
    $('#start').on('click', function() {
        timerID = setInterval(updateTimer, 1000);
    });
    $('#pause').on('click', function() {
        clearInterval(timerId);
    });
    $('#reset').on('click', function() {
        clearInterval(timerId);
        seconds = 0;
        $('timer').text('Start the clock');
    });

});

