# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  respond_to :json

  private
  def respond_with(resource, options={})
    render json:
    { status: {
        code: 200,
        message: "User Sign in successfully",
        data: current_user 
      }
    }, status: :ok
  end

  def respond_to_on_destroy
    jwt_payload = JWT.decode(request.headers['Authorization'].split(' ')[1], Rails.application.credentials.fetch(:secret_key_base)).first
    current_user = User.find(jwt_payload['sub'])
    if current_user
      render json: {
        status: 200,
        message: "User Sign out successfully"
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "User No any active session"
      }, status: :unauthorized
      
    end
  end 
  
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:f_name, :l_name])
  end
end
