Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :session, only: [:create]
      resources :users, only: %i[index create]
      resources :appointments, only: %i[index create]
      resources :services, only: [:index]
    end
  end
end
