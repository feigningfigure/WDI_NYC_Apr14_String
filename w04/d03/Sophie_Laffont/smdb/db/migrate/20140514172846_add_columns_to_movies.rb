class AddColumnsToMovies < ActiveRecord::Migration
  def change
 
	 add_column :movies, :name, :string
  	 add_column :movies, :description, :text
  	 add_column :movies, :director_id, :integer
	
  end
end
