class AddColumnsToSponsorships < ActiveRecord::Migration
  def change

  	# add_column :products, :part_number, :string
  	add_column :sponsorships, :shoe_id, :integer
  	add_column :sponsorships, :team_id, :integer
  	# t.integer :shoe_id
   #  t.integer :team_id
  end
end
