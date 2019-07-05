Rails.application.routes.draw do
  namespace :api do
    namespace :jwt_cookies do
      get  'xcsrf_token' => 'auth#xcsrf_token'
      post 'user_token' => 'user_token#create'
      get  'username' => 'auth#username'
    end
  end
end
