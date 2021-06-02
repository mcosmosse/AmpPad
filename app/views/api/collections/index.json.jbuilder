@collections.each do |collection|
    json.set! collection.id do
        json.extract! collection, :id, :title, :user_id
        json.user collection.user.username
        json.count collection.stories.length
        json.stories collection.stories.each do |story|
            json.set! story.id do
                json.extract! story, :id, :title, :description, :user_id, :complete
            end
        end
    end
end