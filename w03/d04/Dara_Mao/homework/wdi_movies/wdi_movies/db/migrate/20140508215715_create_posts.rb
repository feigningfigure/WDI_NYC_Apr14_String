class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :year
      t.string :integer
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
      t.string :imdbrating
      t.string :integer
      t.string :imdbvotes
      t.string :integer
      t.string :type
      t.string :response

      t.timestamps
    end
  end
end
