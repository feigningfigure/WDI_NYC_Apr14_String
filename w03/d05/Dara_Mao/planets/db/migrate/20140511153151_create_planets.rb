class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :string
      t.string :image_url
      t.string :string
      t.string :diameter
      t.string :integer
      t.string :mass
      t.string :integer
      t.string :life
      t.string :boolean

      t.timestamps
    end
  end
end
