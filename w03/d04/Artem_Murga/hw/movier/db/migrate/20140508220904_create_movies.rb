class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :Title
      t.integer :Year
      t.integer :Rated
      t.string :Released
      t.string :Runtime
      t.string :Genre
      t.string :Director
      t.string :Writer
      t.text :Actors
      t.text :Plot
      t.text :Poster

      t.timestamps
    end
  end
end
