class RemoveRepresentationalFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :representational, :string
  end
end
