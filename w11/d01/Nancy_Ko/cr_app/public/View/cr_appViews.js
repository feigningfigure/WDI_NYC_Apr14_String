var cr_app = Cr_App || { model: {}, collection: {}, view:{} };





// creating view class var cr_app = Backbone.View.extend({});


// creating view instance we just instantiate a new view instance by doing 
// var cr_appView = cr_appView({ model: cr_appItem }); sending in the model that is being created in the model page.


var cr_appView = Backbone.View.extend({
	render: function(){
		var html = '<h3>' + this.model.get('description') + '</h3>'; 
		$(this.el).html(html);
	}
}); 

// generating render function and setting that html element. this is making everything have a top-level html element (el)  

// We can make el anything (div?)(ul?)(li?) 