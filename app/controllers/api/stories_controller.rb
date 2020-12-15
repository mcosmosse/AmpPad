class Api::StoriesController < ApplicationController

    def new

    end

    def create
        @story = Story.create(story_params)
        if @story.save!
            render "api/stories/show"
        else
            render json: @story.errors.full_messages, status: 422
        end
    end

    def show
        @story = Story.find_by(id: params[:id])
        if @story
            render :show
        else
            render json: @story.errors.full_messages, status: 404
        end
    end

    def index
        @stories = Story.all.includes(:author)
        render :index
    end

    def update
        @story = Story.find_by(id: params[:id])
        if @story.update(story_params)
            render "api/stories/show"
        else
            render json: @story.errors.full_messages, status: 422
        end
    end

    def destroy
        @story = Story.find_by(id: params[:id])

        if @story.destroy
          render :show
        else
          render json: @story.errors.full_messages, status: 422
        end
    end

    private

    def story_params
        params.require(:story).permit(:title, :complete, :description, :user_id)
    end

end