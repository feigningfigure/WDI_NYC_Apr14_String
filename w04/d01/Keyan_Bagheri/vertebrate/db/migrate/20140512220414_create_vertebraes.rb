class CreateVertebraes < ActiveRecord::Migration
  def change
    create_table :vertebraes do |t|
      t.string :name
      t.string :scientific_name
      t.text :characteristics

      t.timestamps
    end
  end
end
