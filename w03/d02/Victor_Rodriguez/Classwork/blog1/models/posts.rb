class Post

def self.connect_to_db
	@conn = PG.connect (
	dbname: 'blog1')
end

def self.get_all_posts
	@posts =[]
	self.connect_to_db.exec("SELECT * FROM posts").each.do |post|
	posts << post
end
posts
end

#A method that creates a new room on the table

def self.create(attributes, hash)
	title = attributes_hash[:title]
	body = attributes_hash[:body]
	author = attributes_hash[:author]
	created_at = Time.now

	#The order below matters
	sql_string = <<-SQL.STRING
	INSERT INTO posts
(title, created_at, body, author)
VALUES
(
'#{title}',
'#{created_at}',
'#{body}',
'#{author}',
);
SQLSTRING
end

#Actually create a row in db

self.connect_to_db.exec(sql_string)

#Should return a new instance of post
end