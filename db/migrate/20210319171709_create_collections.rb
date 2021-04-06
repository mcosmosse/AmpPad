class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :title, null: false
      t.integer :user_id, null: false
    end
    add_index :collections, :user_id

    create_table :story_collections do |t|
      t.integer :collection_id, null: false
      t.integer :story_id, null: false
    end
    add_index :story_collections, :collection_id
    add_index :story_collections, :story_id
    add_index :story_collections, [:collection_id, :story_id], unique: true
  end
end
