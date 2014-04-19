class AddDonePointToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :done_point, :integer
    add_column :tasks, :finished_at, :datetime
  end
end
