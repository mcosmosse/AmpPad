class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        @comment.commenter_id = current_user.id
        if @comment.save
            render "api/comments/show"
        else
            render json: @comment.errors.full_messages, status: 422
        end
    end

    def show
        @comment = Comment.find_by(id: params[:id])
        if @comment
            render :show
        else
            render json: @comment.errors.full_messages, status: 404
        end
    end

    def update
        @comment = Comment.find_by(id: params[:id])
        if @comment.update(comment_params)
            render "api/comments/show"
        else
            render json: @comment.errors.full_messages, status: 422
        end
    end

    def destroy
        @comment = Comment.find_by(id: params[:id])

        if @comment.destroy
          render :show
        else
          render json: @comment.errors.full_messages, status: 422
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:body, :commenter_id, :chapter_id, :parent_comment_id)
    end

end
