class Story < ApplicationRecord
    validates :title, :user_id, :description, presence: true
    validates :complete, inclusion: { in: [true, false] }

    belongs_to :author,
        foreign_key: :user_id,
        class_name: :User

    has_many :chapters,
        foreign_key: :story_id,
        class_name: :Chapter

    has_many :story_collections,
        foreign_key: :story_id,
        class_name: :StoryCollection

    has_many :collections,
        through: :story_collections,
        source: :collection

    has_many :votes,
        through: :chapters,
        source: :votes

end
