class CreateSubwayLinesToStationsJoinTable < ActiveRecord::Migration
  def change
   create_join_table :subway_lines, :stations
  end
end
