class CreateMoviests < ActiveRecord::Migration
  def change
    create_table :moviests do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
