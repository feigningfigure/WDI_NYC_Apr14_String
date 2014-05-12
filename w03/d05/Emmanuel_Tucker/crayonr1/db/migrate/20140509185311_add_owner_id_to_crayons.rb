class AddOwnerIdToCrayons < ActiveRecord::Migration
  def change
    # add_colum :table_name, :column_name, :data_type
    add_column :crayons, :owner_id, :integer
  end

end
