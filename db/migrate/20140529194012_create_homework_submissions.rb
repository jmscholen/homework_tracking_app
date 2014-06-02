class CreateHomeworkSubmissions < ActiveRecord::Migration
  def change
    create_table :homework_submissions do |t|
      t.string :title
      t.string :links
      t.text :explanation
      t.integer :homework_assignment_id

      t.timestamps
    end
  end
end
