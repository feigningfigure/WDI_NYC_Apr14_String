class RemoveCountryIdFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :country_id, :integer
  end
end
