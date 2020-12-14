class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
        t.string :title, null: false
        t.integer :user_id, null: false
        t.integer :story_id, null: false
        t.text :body
        t.integer :chapter_number, null: false
        t.boolean :published, null: false
      t.timestamps
    end
    add_index :chapters, :user_id
    add_index :chapters, :story_id
  end
end
