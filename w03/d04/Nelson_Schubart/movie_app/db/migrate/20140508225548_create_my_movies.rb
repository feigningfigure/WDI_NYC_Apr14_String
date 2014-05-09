class CreateMyMovies < ActiveRecord::Migration
  def change
    create_table :my_movies do |t|
      t.string :title
      t.date :year
      t.string :rated
      t.date :released
      t.time :runtime
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
