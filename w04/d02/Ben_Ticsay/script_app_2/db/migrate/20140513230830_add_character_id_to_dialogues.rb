class AddCharacterIdToDialogues < ActiveRecord::Migration
  def change
    add_column :dialogues, :character_id, :integer
  end
end
