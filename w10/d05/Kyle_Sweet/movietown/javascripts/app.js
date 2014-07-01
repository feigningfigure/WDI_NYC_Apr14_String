var directorCollection,
		directorListView;


$(function(){

	directorCollection = new DirectorCollection();
	directorListView = new DirectorListView({ collection: directorCollection, el: $("#director-list") });
	var director = new Director({ name: "Kubrick" });
	authorCollection.add(author);

	$('#new-director').on('submit', function(e){
		e.preventDefault();
		var nameField = $('#director-name');
		var directorName = nameField.val();
		nameField.val('');
		directorCollection.add({ name: directorName });
	})

})