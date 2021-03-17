class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :chapter_id, null: false
      t.integer :commenter_id, null: false
      t.timestamps
    end
    add_index :comments, :chapter_id
    add_index :comments, :commenter_id
  end
end
