class Api::CollectionsController < ApplicationController

    def create
        @collection = Collection.new(collection_params)
        @collection.user_id = current_user.id
        if @collection.save
            render "api/collections/show"
        else
            render json: @collection.errors.full_messages, status: 422
        end
    end

    def show
        @collection = Collection.find_by(id: params[:id])
        if @collection
            render :show
        else
            render json: @collection.errors.full_messages, status: 404
        end
    end

    def index
        @collections = Collection.all.includes(:user, :stories)
        render :index
    end

    def update
        @collection = Collection.find_by(id: params[:id])
        if @collection.update(collection_params)
            render "api/collections/show"
        else
            render json: @collection.errors.full_messages, status: 422
        end
    end

    def destroy
        @collection = Collection.find_by(id: params[:id])

        if @collection.destroy
          render :show
        else
          render json: @collection.errors.full_messages, status: 422
        end
    end

    private

    def collection_params
        params.require(:collection).permit(:title, :user_id)
    end

end
