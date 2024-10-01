# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :user do
        resources :sessions, only: %i[index]
      end
      mount_devise_token_auth_for 'User', at: 'users'
      resources :courses, only: %i[index]
    end
  end
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
