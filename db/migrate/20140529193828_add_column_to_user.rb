class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :comment_id, :integer
  end
end
