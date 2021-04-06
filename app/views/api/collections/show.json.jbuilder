json.extract! @collection, :id, :user_id, :title

json.stories do
    @collection.stories.each do |story|
        json.set! story.id do
            json.extract! story, :id, :title, :description, :user_id, :complete
            json.author story.author.username
        end
    end
end