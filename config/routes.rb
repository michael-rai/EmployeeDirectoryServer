# frozen_string_literal: true

Rails.application.routes.draw do
  resources :employees
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, expect: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # employees
  get '/employees' => 'employees#index'
end
