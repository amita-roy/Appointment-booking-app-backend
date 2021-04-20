Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "auth/signin", to: "authentication#signin"
      post "auth/signup", to: "authentication#signup"
    end
  end
end
