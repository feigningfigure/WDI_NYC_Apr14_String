class CreateBeats < ActiveRecord::Migration
  def change
    create_table :beats do |t|
      t.integer :id
      t.string :title
      t.text :content
      t.integer :producer.id
    end
  end
end
