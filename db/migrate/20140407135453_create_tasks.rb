class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :state
      t.integer :size
      t.datetime :started_at

      t.timestamps
    end
  end
end
