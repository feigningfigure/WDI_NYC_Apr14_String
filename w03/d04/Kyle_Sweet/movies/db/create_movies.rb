class CreatePosts < ActiveRecord::Migration
  def change
    create_table :my_movies do |t|
      t.string :title
      t.string :year
      t.string :rating
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :writer
      t.string :actors
      t.string :plot
      t.string :poster

      t.timestamps
    end
  end
end
