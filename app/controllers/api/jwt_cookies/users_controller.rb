module Api
  module JwtCookies
    class UsersController < ApplicationController
      include ::ActionController::Cookies
      before_action :find_user

      def name
        if @current_user.present? && @current_user.is_a?(User)
          render json: {name: @current_user.name}
        else
          render json: {message: 'Bad user'}, status: 401
        end
      end

      private

      def find_user
        token = JSON.parse(session[:jwt_cookies])['jwt']
        user_id = Knock::AuthToken.new(token: token).payload["sub"]
        @current_user = User.find_by(id: user_id)
      end
    end
  end
end
