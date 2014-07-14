var Schema = mongoose.Schema;

var PenguinSchema = new Schema({
	name : String
});

module.exports = db.model('Penguin', PenguinSchema);