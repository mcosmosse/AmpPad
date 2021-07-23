class Api::StoryCollectionsController < ApplicationController

    def create
        @story_collection = StoryCollection.new(story_collections_params)
        if @story_collection.save
            render "api/story_collections/show"
        else
            render json: @story_collection.errors.full_messages, status: 422
        end
    end

    def destroy
        @story_collection = StoryCollection.find_by(collection_id: params[:collection_id], story_id: params[:story_id])
        
        if @story_collection
            @story_collection.destroy
            render "api/story_collections/show"
        else
            render json: @story_collection.errors.full_messages, status: 422
        end
    end

    private

    def story_collections_params
        params.require(:story_collection).permit(:story_id, :collection_id)
    end

end