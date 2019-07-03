class User < ApplicationRecord
  has_secure_password

  def self.from_token_request(request)
  # Returns a valid user, `nil` or raise `Knock.not_found_exception_class_name`
    login = request.params["auth"] && request.params["auth"]["login"]
    user = self.find_by(login: login)
    if user.present?
      return user
    else
      raise Knock.not_found_exception_class_name
    end
  end
end
