class Api::VotesController < ApplicationController

    def create
        @vote = Vote.new(vote_params)
        if @vote.save
            render 'api/votes/show'
        else
            render json: @vote.errors.full_messages, status: 422
        end
    end

    def destroy
        @vote = Vote.find_by(user_id: params[:user_id], chapter_id: params[:chapter_id])
        
        if @vote
            @vote.destroy
            render 'api/votes/show'
        else
            render json: @vote.errors.full_messages, status: 422
        end
    end

    private

    def vote_params
        params.require(:vote).permit(:chapter_id, :user_id)
    end

end
