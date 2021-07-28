class Vote < ApplicationRecord
    validates :user_id, :chapter_id, presence: true
    validates :user_id, uniqueness: { scope: [:chapter_id] }

    belongs_to :voter,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :chapter,
        foreign_key: :chapter_id,
        class_name: :Chapter
end
