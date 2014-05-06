class Post

  attr_accessor :title, :body, :author, :id, :created_at

  def initialize(attributes_hash)
    # does not create on the database
    # only creates a Ruby instance
    @title = attributes_hash[:title]
    @body = attributes_hash[:body]
    @author = attributes_hash[:author]
  end

  # a method that establishes link to DB
  def self.connect_to_db
    PG.connect(dbname: 'blog1')
  end

  def destroy
    # destroys an instance of Post
    Post.find
  end

  def self.find(id)
    posts = self.all
    results = posts.select do |post|
      post["id"] == id.to_s
    end
    results
  end

  # a method that fetches all rows from table
  def self.all
    posts = []
    self.connect_to_db.exec("SELECT * FROM posts").each do |post|
      posts << post
    end
    posts
  end

  # a method that creates a new row on the table
  def self.create(attributes_hash)
    # Post.create({title: "My Title", body: "My Body", author: "me"})

    # pluck out the data needed from attributes hash
    title = attributes_hash[:title]
    body = attributes_hash[:body]
    author = attributes_hash[:author]
    created_at = Time.now

    # the order below matters
    sql_string = <<-SQLSTRING
    INSERT INTO posts
      (title, created_at, body, author)
      VALUES
      (
        '#{title}',
        '#{created_at}',
        '#{body}',
        '#{author}'
      );
    SQLSTRING

    # actually create a row in my db
    result = self.connect_to_db.exec(sql_string)

    # should return a new instance of post

  end

end
