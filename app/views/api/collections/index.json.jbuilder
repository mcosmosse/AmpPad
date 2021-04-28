@collections.each do |collection|
    json.set! collection.id do
        json.extract! collection, :id, :title, :user_id
        json.user collection.user.username
        json.count collection.stories.length
    end
end