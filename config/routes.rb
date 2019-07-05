Rails.application.routes.draw do
  namespace :api do

    namespace :jwt do
      post 'user_token' => 'user_token#create'
      get  'name' => 'users#name'
    end

    namespace :jwt_cookies do
      post 'user_token' => 'user_token#create'
      get  'username' => 'auth#username'
    end
  end
end
