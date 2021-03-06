module SessionHelpers
  def sign_in(user)
    post "/api/users/sessions", params: {
      user: {
        email: user.email,
        password: "password"
      }
    }

    @jwt = json["jwt"]
  end

  def authorization_header
    raise StandardError.new("No session has been set. Remember to sign_in(user)!") unless @jwt
    { "HTTP_AUTHORIZATION" => @jwt }
  end
end
