class Comment < ApplicationRecord
    validates :commenter_id, :chapter_id, :body, presence: true

    belongs_to :chapter,
        foreign_key: :chapter_id,
        class_name: :Chapter

    belongs_to :commenter,
        foreign_key: :commenter_id,
        class_name: :User

    has_many :child_comments,
        foreign_key: :parent_comment_id,
        class_name: :Comment

    belongs_to :parent_comment,
        foreign_key: :parent_comment_id,
        class_name: :Comment,
        optional: true

end
