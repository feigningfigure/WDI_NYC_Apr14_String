class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :stakes, :stake_id, :oilfield_id
  end
end
