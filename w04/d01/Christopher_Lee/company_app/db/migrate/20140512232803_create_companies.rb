class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :image_url
      t.integer :assets_in_billions
      t.integer :founded

      t.timestamps
    end
  end
end
