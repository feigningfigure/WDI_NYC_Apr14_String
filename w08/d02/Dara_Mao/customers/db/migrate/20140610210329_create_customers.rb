class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string  :name
      t.text    :address
      t.string  :email
      t.integer :loyalty_code

      t.timestamps
    end
  end
end
