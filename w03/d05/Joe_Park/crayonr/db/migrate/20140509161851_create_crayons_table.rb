class CreateCrayonsTable < ActiveRecord::Migration
  def change
    create_table :crayons do |t|

      # here is where I define columns, etc.

      # t(able).data_type   :column_name
      t.string            :name
      t.integer           :intensity

    end
  end
end
