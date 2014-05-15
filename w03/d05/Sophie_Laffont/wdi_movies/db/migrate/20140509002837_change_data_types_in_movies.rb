class ChangeDataTypesInMovies < ActiveRecord::Migration

  def change
    change_column :movies, :year, :string
    change_column :movies, :rates, :string
    change_column :movies, :released, :string
    change_column :movies, :runtime, :string
  end

end
