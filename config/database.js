var host = process.env.DB_HOST || 'localhost';
module.exports = {
	// the database url to connect
	url : `mongodb://${host}:27017/todo`
}
