class AddBelongsToToMoons < ActiveRecord::Migration
  def change
    add_column :moons, :belongs_to, :string
  end
end
