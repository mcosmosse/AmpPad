class Chapter < ApplicationRecord
    validates :title, :user_id, :story_id, :chapter_number, presence: true
    validates :published, inclusion: { in: [true, false] }

    belongs_to :story,
        foreign_key: :story_id,
        class_name: :Story

end
