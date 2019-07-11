module Api
  module Cookie
    class AuthController < ApplicationController
      include ::ActionController::Cookies

      def login
        if params['data']['login'] && params['data']['password']
          user = User.find_by(login: params['data']['login'])
          if user && user.authenticate(params['data']['password'])
            session[:user_id] = user.id
          else
            render json: {message: 'Wrong login or password'}, status: 403
          end
        else
          render json: {}, status: 401
        end
      end
    end
  end
end
