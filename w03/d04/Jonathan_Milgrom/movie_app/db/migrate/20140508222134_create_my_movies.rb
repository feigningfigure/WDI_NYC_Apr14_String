class CreateMyMovies < ActiveRecord::Migration
  def change
    create_table :my_movies do |t|
      t.string :title
      t.integer :year
      t.string :rated
      t.string :released
      t.integer :runtime
      t.string :genre
      t.string :director
      t.string :writer
      t.string :actors
      t.text :plot
      t.string :movie_poster

      t.timestamps
    end
  end
end
