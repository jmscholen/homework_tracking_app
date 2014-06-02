class CreateHomeworkAssignments < ActiveRecord::Migration
  def change
    create_table :homework_assignments do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.integer :cohort_id

      t.timestamps
    end
  end
end
