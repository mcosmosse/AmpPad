class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
        t.string :title, null: false
        t.integer :user_id, null: false
        t.string :description, null: false
        t.boolean :complete, null: false
      t.timestamps
    end
    add_index :stories, :user_id
  end
end
