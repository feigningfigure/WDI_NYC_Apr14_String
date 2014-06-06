class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :task_text
      t.date :due_date
      t.boolean :completed

      t.timestamps
    end
  end
end
