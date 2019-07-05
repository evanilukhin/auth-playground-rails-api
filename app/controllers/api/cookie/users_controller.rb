module Api
  module Cookie
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
        login = session[:user_login]
        @current_user = User.find_by(login: login)
      end
    end
  end
end
