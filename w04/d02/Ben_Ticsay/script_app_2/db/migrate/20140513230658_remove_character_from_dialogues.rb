class RemoveCharacterFromDialogues < ActiveRecord::Migration
  def change
    remove_column :dialogues, :character, :string
  end
end
