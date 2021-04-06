class StoryCollection < ApplicationRecord
    validates :story_id, :collection_id, presence: true

    belongs_to :story,
        foreign_key: :story_id,
        class_name: :Story

    belongs_to :collection,
        foreign_key: :collection_id,
        class_name: :Collection
        
end