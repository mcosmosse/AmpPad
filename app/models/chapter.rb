class Chapter < ApplicationRecord
    validates :title, :user_id, :story_id, :chapter_number, presence: true
    validates :published, inclusion: { in: [true, false] }

    belongs_to :story,
        foreign_key: :story_id,
        class_name: :Story

    has_many :comments,
        foreign_key: :chapter_id,
        class_name: :Comment

    has_many :commenters,
        through: :comments,
        source: :commenter

    has_many :votes,
        foreign_key: :chapter_id,
        class_name: :Vote,
        dependent: :destroy
    
    # def comments_by_parent
    #     comments_by_parent = Hash.new { |hash, key| hash[key] = [] }

    #     self.comments.includes(:commenter).each do |comment|
    #         comments_by_parent[comment.parent_comment_id] << comment
    #     end
    
    #     comments_by_parent
    # end

end
