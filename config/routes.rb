# frozen_string_literal: true
Rails.application.routes.draw do
  resources :games, except: [:new, :edit]
  resources :users, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/games/:id' => 'games#delete'
  patch '/change-password/:id' => 'users#changepw'
end
