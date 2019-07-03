module Api
  module JwtCookies
    class UserTokenController < Knock::AuthTokenController
      include ::ActionController::Cookies
      skip_before_action :verify_authenticity_token

      def create
        cookies.signed[:jwt_cookies] = {value: auth_token.to_json, httponly: true}
        super
      end
    end
  end
end
