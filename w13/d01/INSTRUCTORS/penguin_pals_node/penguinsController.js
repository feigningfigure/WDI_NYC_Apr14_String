var Penguin = require(__dirname + '/penguin.js');

module.exports.index = function(req, res){
	Penguin.find(function(err, penguins){
		if (err) return console.error(err);
		res.send(penguins);
	})
}

module.exports.create = function(req, res){
	Penguin.create({ name: req.body.name }, function(err, penguin){
		if (err) return console.error(err);
		res.send(penguin);
	})
}

module.exports.update = function(req, res){
	Penguin.findById(req.params.id, function(err, penguin){
		if (err) return console.error(err);
		penguin.update({ name: req.body.name }, function(err, updated){
			if (err) return console.error(err);
			res.send(updated);
		})	
	})
}

module.exports.delete = function(req, res){
	Penguin.findById(req.params.id, function(err, penguin){
		if (err) return console.error(err);
		penguin.remove(function(err){
			if (err) return console.error(err);
			return res.send({ 'succes' : 'ok' });
		})
	})
}














