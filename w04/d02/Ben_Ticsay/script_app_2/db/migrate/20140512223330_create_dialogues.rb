class CreateDialogues < ActiveRecord::Migration
  def change
    create_table :dialogues do |t|

      t.string      :character
      t.text        :content

      # this must be called 'relation_id'
      t.integer     :scene_id

      t.timestamps


    end
  end
end
