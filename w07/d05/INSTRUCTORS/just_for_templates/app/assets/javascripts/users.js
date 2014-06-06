$(document).ready(function() {

    var userTemplate = _.template($("#userTemplate").text());
    var $userList = $("#user_list");

    $("#add_new_user").click(function() {
        var user = {
            name: $("#new_user_name").val(),
            favorite_color: $("#new_user_favorite_color").val()
        };

        var userHTML = userTemplate(user);
        $userList.append(userHTML);

        $.ajax({
            url: "/users",
            type: "POST",
            dataType: "json",
            data: user
        }).done(function(data) {
            if (data.message == "FAILURE") {
                alert("OH NO, FAILURE! Removing element now.");
                $userList.children().last().remove();
            }
        });
    });

});