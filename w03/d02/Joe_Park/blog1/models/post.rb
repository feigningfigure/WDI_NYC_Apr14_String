class Post

	# a method that establishes link to DB
	def self.connect_to_db
		# conn = PG.connect({
		# 	dbname: 'blog1'
		# })
		# return conn
		PG.connect(dbname: 'blog1')
	end

	# a method that fetches all rows from table
	def self.all
		posts = []
		self.connect_to_db.exec("SELECT * FROM posts").each do |post| 
			posts << post 
		end
		posts
	end

	# a method that creates a new row
	def self.creates(attributes_hash)
		#Post.create({title: "My Title", body: "My Body"})
		
		#pluck out the data needed from attributes hash
		title = attributes_hash[:title]
		created_at = Time.now
		body = attributes_hash[:body]
		author = attributes_hash[:author]

		# the order below matters
		sql_string = <<-SQLSTRING
		INSERT INTO posts
			(title, created_at, body, author)
			VALUES(
			  '#{title}',	
			  '#{created_at}',
			  '#{body}',
			  '#{author}'
			);
		SQLSTRING

		# actually create a row in my db
		self.connect_to_db.exec(sql_string)

		# should return a new instance
		
	end

end