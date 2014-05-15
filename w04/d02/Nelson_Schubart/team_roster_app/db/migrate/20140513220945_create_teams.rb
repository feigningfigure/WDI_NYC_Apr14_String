class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|

      t.string    :name
      t.string    :city
      t.string    :mascot
      # t.int       :roster_size
      # t.string    :record

      # t.timestamps

    end
  end
end
