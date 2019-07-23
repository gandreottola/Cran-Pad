# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, :ideas, except: %i[new edit]

  # Authentication
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Users
  get '/users' => 'users#index'
  get 'users/:id' => 'users#show'
  patch '/users' => 'users#update'
end
