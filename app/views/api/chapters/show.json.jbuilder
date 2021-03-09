json.extract! @chapter, :id, :title, :user_id, :story_id, :body, :chapter_number, :published

json.comments do
    @chapter.comments_by_parent.each do |comment|
        json.set! comment.id do
            json.extract! comment, :id, :body, :commenter_id, :chapter_id, :parent_comment_id
        end
    end
end