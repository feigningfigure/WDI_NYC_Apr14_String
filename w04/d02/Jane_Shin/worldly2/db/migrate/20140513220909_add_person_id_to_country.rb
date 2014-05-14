class AddPersonIdToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :person_id, :integer
  end
end
