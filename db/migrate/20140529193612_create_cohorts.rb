class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :title
      t.integer :subject_id
      t.integer :location_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :enrollment_size

      t.timestamps
    end
  end
end
