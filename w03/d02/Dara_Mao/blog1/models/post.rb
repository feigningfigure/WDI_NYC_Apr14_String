class Post
  def connect_to_db
     conn = PG.connect({
      dbname: 'blog1'
    });
     return conn
   end

   def self.get_all_posts
    posts=[]
    connect_to_db.exec("SELECT * FROM posts").each do |post|
      posts << post
    end
    posts
  end
end
