class Story < ApplicationRecord
    validates :title, :user_id, presence: true
    validates :complete, inclusion: { in: [true, false] }

    belongs_to :author,
        foreign_key: :user_id,
        class_name: :User

    has_many :chapters,
        foreign_key: :story_id,
        class_name: :Chapter

end
