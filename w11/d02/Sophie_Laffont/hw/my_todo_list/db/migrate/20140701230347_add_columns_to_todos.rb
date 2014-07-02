class AddColumnsToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :task_name, :string
    add_column :todos, :status, :string
    add_column :todos, :description, :string
  end
end
