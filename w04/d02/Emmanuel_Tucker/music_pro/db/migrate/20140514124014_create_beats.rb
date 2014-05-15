class CreateBeats < ActiveRecord::Migration
  def change
    create_table :beats do |t|
      t.int :id
      t.string :title
      t.text :content
      t.int :producer_id

      t.timestamps
    end
  end
end
