class AddColumnsPeople < ActiveRecord::Migration
  def change
    add_column :people, :address, :text
    add_column :people, :email, :string
    add_column :people, :loyalty_code, :integer

  end
end
