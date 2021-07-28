@stories.each do |story|
    json.set! story.id do
        json.extract! story, :id, :title, :user_id, :description, :complete, :votes
        json.author story.author.username
    end
end