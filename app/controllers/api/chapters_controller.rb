class Api::ChaptersController < ApplicationController

    def create
        @chapter = Chapter.new(chapter_params)
        @chapter.user_id = current_user.id
        if @chapter.save
            render "api/chapters/show"
        else
            render json: @chapter.errors.full_messages, status: 422
        end
    end

    def show
        @chapter = Chapter.includes(:commenters).find_by(id: params[:id])
        if @chapter
            render :show
        else
            render json: @chapter.errors.full_messages, status: 404
        end
    end

    def update
        @chapter = Chapter.find_by(id: params[:id])
        if @chapter.update(chapter_params)
            render "api/chapters/show"
        else
            render json: @chapter.errors.full_messages, status: 422
        end
    end

    def destroy
        @chapter = Chapter.find_by(id: params[:id])

        if @chapter.destroy
          render :show
        else
          render json: @chapter.errors.full_messages, status: 422
        end
    end

    private

    def chapter_params
        params.require(:chapter).permit(:title, :body, :chapter_number, :published, :user_id, :story_id)
    end

end