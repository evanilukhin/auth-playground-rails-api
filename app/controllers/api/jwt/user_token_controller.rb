module Api
  module Jwt
    class UserTokenController < Knock::AuthTokenController
      skip_before_action :verify_authenticity_token
    end
  end
end
