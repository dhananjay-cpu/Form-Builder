# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  respond_to :json
 
  private
 
  def respond_with(resource, options={})
   if resource.persisted?
     render json:{
       status:{
         code: 200,
         message: "Signed up Successfully",
         data: resource
       }
     }, status: :ok
     else
       render json: {
         status: { message: "User could not be created"}
       }, status: :unprocessable_entity
     end
   end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:f_name, :l_name])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:f_name, :l_name])
  end

end
