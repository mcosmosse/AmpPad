json.story do
    json.extract! @story, :id, :title, :user_id, :description, :complete
end

json.chapters do
    @story.chapters.each do |chapter|
        json.set! chapter.id do
            json.extract! chapter, :id, :title, :chapter_number, :story_id
        end
    end
end