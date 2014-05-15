class CreateIceCreamFlavors < ActiveRecord::Migration
  def change
    create_table :ice_cream_flavors do |t|
      t.string :name

      t.timestamps
    end
  end
end
