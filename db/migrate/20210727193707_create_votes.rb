class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
        t.integer :user_id, null: false
        t.integer :chapter_id, null: false
    end
    add_index :votes, :user_id
    add_index :votes, :chapter_id
  end
end
