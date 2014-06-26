class RemoveStationIdFromSubwayLines < ActiveRecord::Migration
  def change
    remove_column :subway_lines, :station_id, :integer
  end
end
