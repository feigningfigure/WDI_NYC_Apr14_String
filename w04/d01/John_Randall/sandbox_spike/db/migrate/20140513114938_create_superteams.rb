class CreateSuperteams < ActiveRecord::Migration
  def change
    create_table :superteams do |t|

      t.timestamps
    end
  end
end
