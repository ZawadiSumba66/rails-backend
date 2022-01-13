# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/presigned_url', to: 'direct_upload#create'
      post :auth, to: 'authentication#create'
      resources :users
      resources :favorites
      resources :tips do
        post 'favorite', to: 'tips#favorite'
        post 'unfavourite', to: 'tips#unfavourite'
      end
    end
  end
end
