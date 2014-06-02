class AddSubjectIdToLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :subject_id, :integer
  end
end
