class Api::StoriesController < ApplicationController

    def create
        @story = Story.new(story_params)
        @story.user_id = current_user.id
        if @story.save
            # create a chapter, save it, then render it
            @chapter = Chapter.new(title: 'Untitled Part 1', body: '', chapter_number: 1, published: false)
            @chapter.story_id = @story.id
            @chapter.user_id = current_user.id
            @chapter.save
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
        @stories = Story.all.includes(:author, :votes)
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

    def chapter_params
        params.require(:chapter).permit(:title, :body, :chapter_number, :story_id, :user_id, :published)
    end

end