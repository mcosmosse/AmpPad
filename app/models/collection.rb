class Collection < ApplicationRecord
    validates :title, :user_id, presence: true
    validates :title, uniqueness: { scope: [:user_id] }

    has_many :story_collections,
        foreign_key: :collection_id,
        class_name: :StoryCollection

    has_many :stories,
        through: :story_collections,
        source: :story

    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User
end