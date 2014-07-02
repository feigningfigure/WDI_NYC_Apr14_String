var Cupcakemaker = Cupcakemaker || {
    Models: {},
    Collections: {},
    Views: {}
};

Cupcakemaker.initialize = function() {
    var collection = new Cupcakemaker.Collections.CupcakeCollection();
    var listView = new Cupcakemaker.Views.CupcakeListView({
        collection: collection,
        el: $('.cupcake-orders')
    });
    collection.fetch();
    $('.cupcakes').find('form').on('click', 'button', function(e) {
        e.preventDefault();
        var cupcakeFlavor = $('#cupcake-flavor').val();
        var cupcakeSize = $('#cupcake-size').val();
        var cupcakeUnit = $('#cupcake-unit').val();
        $('#cupcake-flavor').val('')
        $('#cupcake-size').val('')
        $('#cupcake-unit').val('')

        collection.create({
            flavor: cupcakeFlavor,
            size: cupcakeSize,
            unit: cupcakeUnit
        })
    })
}

$(function() {
    Cupcakemaker.initialize();
})
