class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string    :item
      t.text      :description
     # this must be called 'relation_id'
           t.integer     :member_id

      t.timestamps
    end
  end
end
