class ChangeRatesToRatedInMovies < ActiveRecord::Migration
  def change

    rename_column :movies, :rates, :rated
  end
end
