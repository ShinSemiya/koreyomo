class AddUserToSomeTable < ActiveRecord::Migration
  def change
    add_column :books, :user_id, :integer
    add_index :books, :user_id

    add_column :tasks, :user_id, :integer
    add_index :tasks, :user_id
  end
end
