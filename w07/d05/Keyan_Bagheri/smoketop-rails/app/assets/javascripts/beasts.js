
$(document).ready(function() {
    var $beastList = $("#beast-list");

    $(".diet").click(function() {
        var id = $(this).val();
        $.ajax({
                url: "/beasts?diet="+id+"&commit=Filter",
                type: "GET",
                dataType: "json"
        }).done(function(data) {
            // console.log(data)
            // console.log(beastTemplate)
            $beastList.empty();
            data.forEach(function(beast) {
                console.log(beast);
                var beastTemplate = _.template($("#beastTemplate").html(), beast);
                $beastList.append(beastTemplate);
            });
        });
    });

});
