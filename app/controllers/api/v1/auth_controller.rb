class Api::V1::AuthController < ApplicationController

    # # find the user based on username
    # # if the user exists
    # #   verify that the password matches the one they provided
    # #   if it does:
    # #     send back that user
    # #   if not:
    # #     send error message
    # # if no user found: 
    # #  send an error
    def create
    
      user = User.find_by(email: params[:email])
  
      if user && user.authenticate(params[:password])
  
        payload = { user_id: user.id }
        hmac_secret = '$3cr3t K3y'
        token = JWT.encode(payload, hmac_secret, 'HS256')
  
        render json: { user: UserSerializer.new(user), jwt_token: token }
      else
        render json: { error: 'Email or Password does not exist.'}
      end
  
    end
    
  
    def show
      token = request.headers[:Authorization].split(' ')[1]
      decoded_token = JWT.decode(token, '$3cr3t K3y', true, { algorithm: 'HS256' })
      user_id = decoded_token[0]['user_id']
  
      user = User.find(user_id)
  
      if user
        render json: { user: UserSerializer.new(user) }
      else
        render json: { error: 'Invalid token.'}
      end
    end


end
