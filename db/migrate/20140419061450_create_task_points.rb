class CreateTaskPoints < ActiveRecord::Migration
  def change
    create_table :task_points do |t|
      t.integer :point, null: false
      t.belongs_to :task

      t.timestamps
    end
  end
end
