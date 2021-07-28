json.chapter do
    json.extract! @chapter, :id, :title, :user_id, :story_id, :body, :chapter_number, :published, :votes
end

json.comments do
    @chapter.comments.each do |comment|
        json.set! comment.id do
            json.extract! comment, :id, :body, :commenter_id, :chapter_id
            json.commenter comment.commenter.username
        end
    end
end