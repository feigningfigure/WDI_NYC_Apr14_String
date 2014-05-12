class RemoveBelongsToFromMoon < ActiveRecord::Migration
  def change
    remove_column :moons, :belongs_to, :string
  end
end
