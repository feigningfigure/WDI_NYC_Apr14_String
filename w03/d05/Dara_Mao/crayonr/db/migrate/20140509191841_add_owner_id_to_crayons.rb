class AddOwnerIdToCrayons < ActiveRecord::Migration
  def change
    add_column :crayons, :owner_id, :string
  end
end
