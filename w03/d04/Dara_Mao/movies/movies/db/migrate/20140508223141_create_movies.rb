class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :rated
      t.string :released
      t.string :genre
      t.string :director
      t.string :writer
      t.string :actors
      t.string :plot
      t.string :language
      t.string :country
      t.string :award
      t.string :poster
      t.string :metascore
      t.integer :imdbrating
      t.integer :imdbvotes
      t.string :type
      t.string :response

      t.timestamps
    end
  end
end
