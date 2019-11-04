module Api
  module Jwt
    class UsersController < ApplicationController
      include Knock::Authenticable

      before_action :authenticate_user

      def name
        render json: { name: current_user.name }
      end
    end
  end
end
