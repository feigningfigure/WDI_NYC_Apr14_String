class RemoveSubwayLineIdFromStations < ActiveRecord::Migration
  def change
    remove_column :stations, :subway_line_id, :integer
  end
end
