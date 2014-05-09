class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :rated
      t.string :released
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :writers
      t.string :actors
      t.text :plot
      t.string :movie_poster

      t.timestamps
    end
  end
end