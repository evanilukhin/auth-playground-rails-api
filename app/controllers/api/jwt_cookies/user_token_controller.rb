module Api
  module JwtCookies
    class UserTokenController < Knock::AuthTokenController
      include ::ActionController::Cookies
      skip_before_action :verify_authenticity_token

      def create
        session[:jwt_cookies] = auth_token.to_json
        render body: nil, status: :created
      end
    end
  end
end
