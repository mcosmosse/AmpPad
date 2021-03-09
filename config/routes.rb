Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do 
    resources :users, only: [:new, :create, :show]
    resource :session, only: [:new, :create, :destroy]
    resources :stories, only: [:create, :show, :update, :destroy, :index]
    resources :chapters, only: [:create, :show, :update, :destroy]
    resources :comments, only: [:create, :show, :update, :destroy]
  end

  root "static_pages#root"
end
