class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :string
      t.string :year
      t.string :string
      t.string :rated
      t.string :string
      t.string :released
      t.string :string
      t.string :runtime
      t.string :string
      t.string :genre
      t.string :string
      t.string :director
      t.string :string
      t.string :writer
      t.string :string
      t.string :actors
      t.string :string
      t.string :plot
      t.string :text
      t.string :movie
      t.string :poster
      t.string :string

      t.timestamps
    end
  end
end
