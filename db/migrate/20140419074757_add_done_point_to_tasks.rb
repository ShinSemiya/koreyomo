class AddDonePointToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :done_point, :integer
  end
end
