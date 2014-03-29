class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :archive

      t.integer :isbn
      t.string :title
      t.timestamps
    end
    add_index :books, :archive_id
  end
end
