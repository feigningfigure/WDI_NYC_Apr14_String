class RemovePersonIdFromCountries < ActiveRecord::Migration
  def change
    remove_column :countries, :person_id, :integer
  end
end
