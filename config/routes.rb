Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      post 'auth/signin', to: 'authentication#signin'
      post 'auth/signup', to: 'authentication#signup'
      get 'appointments', to: 'appointments#index'
      post 'appointments', to: 'appointments#create'
    end
  end
end
