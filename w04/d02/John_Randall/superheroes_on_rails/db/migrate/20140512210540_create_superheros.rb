class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :super_power
      t.integer :superteam_id

      t.timestamps
    end
  end
end
