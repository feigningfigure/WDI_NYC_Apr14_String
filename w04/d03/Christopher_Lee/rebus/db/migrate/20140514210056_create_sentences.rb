class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :photo_1
      t.string :word_1
      t.string :photo_2
      t.string :word_2
      t.string :photo_3

      t.timestamps
    end
  end
end
