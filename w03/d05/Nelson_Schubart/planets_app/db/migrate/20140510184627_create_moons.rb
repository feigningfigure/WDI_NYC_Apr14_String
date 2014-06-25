class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.string :name
      t.string :image_url
      t.string :string

      t.timestamps
    end
  end
end
