class Post

  attr_accessor :title, :body, :author, :id, :created_at

  def initialize(attributes_hash)
    # does not create on the database
    # only creates a Ruby instance
    @title = attributes_hash[:title]
    @body = attributes_hash[:body]
    @author = attributes_hash[:author]
    @id = attributes_hash[:id]
    @created_at = attributes_hash[:created_at]
  end

  # a method that establishes link to DB
  def self.connect_to_db
    PG.connect(dbname: 'blog1')
  end

  def destroy
    # destroys an instance of Post
    post_id = self.id
    Post.connect_to_db.exec("DELETE FROM posts WHERE id=#{post_id}")
  end

  def self.find(id)
    posts = self.all
    results = posts.select do |post|
      post.id.to_i == id.to_i
    end
    results.first
  end

  # a method that fetches all rows from table
  def self.all(option_clause=nil)
    posts = []
    self.connect_to_db.exec("SELECT * FROM posts #{option_clause}").each do |post|

      # workaround code begins here
      symbolified_hash = {}
      post.each do |key,value|
        symbolified_hash[key.to_sym] = value
      end
      # workaround code ends here

      posts << Post.new(symbolified_hash)
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
    self.connect_to_db.exec(sql_string)

    newest_result = self.all("ORDER BY id desc").first

    # newest_result should be instance of Post
    id_of_newest = newest_result.id

    # should return a new instance of post
    return  Post.new({
      title: title,
      body: body,
      created_at: created_at,
      id: id_of_newest.to_i
    })

  end

end
