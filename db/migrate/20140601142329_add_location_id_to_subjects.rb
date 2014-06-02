class AddLocationIdToSubjects < ActiveRecord::Migration
  def change
  	add_column :subjects, :location_id, :integer
  end
end
