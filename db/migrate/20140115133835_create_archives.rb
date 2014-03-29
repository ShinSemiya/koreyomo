class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.belongs_to :user
      t.string :subject
      t.string :body

      t.timestamps
    end
    add_index :archives, :user_id
  end
end
