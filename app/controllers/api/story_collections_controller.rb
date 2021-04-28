class Api::StoryCollectionsController < ApplicationController

    def create
        @story_collection = StoryCollection.new(story_collections_params)
        if @story_collection.save
            @collection = Collection.find_by(id: params[:collection_id])
            render "api/collections/show"
        else
            render json: @story_collection.errors.full_messages, status: 422
        end
    end

    def delete
        @story_collection = StoryCollection.find_by(id: params[:id])

        if @story_collection.destroy
            @collection = Collection.find_by(id: params[:collection_id])
            render "api/collections/show"
        else
            render json: @story_collection.errors.full_messages, status: 422
        end
    end

    private

    def story_collections_params
        params.require(:collection).permit(:story_id, :collection_id)
    end

end