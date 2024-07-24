# frozen_string_literal: true

class PasswordsController < ApplicationController
  def forgot
    user = User.find_by(email: params[:email])
    if user 
      render json: {
        alert: "Code has been sent your email address"
      }
      user.send_password_reset
    else
      render json: {
        alert: "If User is exist, we have send the mail to you on the given mail address"
      }
    end
  end

  def reset
    user = User.find_by(reset_password_token: params[:token], email: params[:email])
    if user.present? && user.password_token_valid?
      if user.reset_password(params[:password])
        render json: {
          alert: "Your password has been successfully reset!"
        }
        # session[:user_id] = user.id
      else
        render json: {error: user.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {error: ['Link is expired or not valid, please try again']}, status: :not_found
    end
  end
end
