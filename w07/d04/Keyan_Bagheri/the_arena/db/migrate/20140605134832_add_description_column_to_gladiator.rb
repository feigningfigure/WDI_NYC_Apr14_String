class AddDescriptionColumnToGladiator < ActiveRecord::Migration
  def change
    add_column :gladiators, :description, :string
  end
end
