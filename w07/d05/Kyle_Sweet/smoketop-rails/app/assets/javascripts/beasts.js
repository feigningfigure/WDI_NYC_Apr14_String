console.log("LOGGING");

$(document).ready(function() {

    var beastTemplate = _.template($("#beast-list").text());
    var $beast_list = $("#beast-list");

    var beastHTML = beastTemplate(beast);
    $beastList.append(beastHTML);

        $.ajax({
            url: "/index",
            type: "POST",
            dataType: "json",
            data: beasts
        }).done(function(data) {
            if (data.message == "FAILURE") {
                alert("Deleting Beast.");
                $beastList.beast().last().remove();
            }
        });
    });

});





});