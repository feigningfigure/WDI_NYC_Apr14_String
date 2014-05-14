class AddParantheticalToDialogues < ActiveRecord::Migration
  def change
    add_column :dialogues, :paranthetical, :text
  end
end
