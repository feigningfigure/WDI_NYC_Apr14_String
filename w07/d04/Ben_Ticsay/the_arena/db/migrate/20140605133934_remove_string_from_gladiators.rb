class RemoveStringFromGladiators < ActiveRecord::Migration
  def change
    remove_column :gladiators, :string, :string
  end
end
