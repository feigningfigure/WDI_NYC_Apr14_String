class RemoveBodyColumnFromMoons < ActiveRecord::Migration
  def change
    remove_column :moons, :body, :text
  end
end
