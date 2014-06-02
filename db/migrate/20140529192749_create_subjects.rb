class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.integer :course_number

      t.timestamps
    end
  end
end
