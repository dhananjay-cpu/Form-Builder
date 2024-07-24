# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  def forgot
    @user = User.find_by(email: params[:email])
    if @user 
      render json: {
      alert: "If User is exist, we have send the mail to you on the given mail address"
    }
    user.sent_password_reset
    else
      render json: {
        alert: "If User is exist, we have send the mail to you on the given mail address"
      }
    end
  end

  def reset
    @user = User.find_by(reset_password_token: params[:token], email: params[:email])
    if user.present && user.password_token_valid?
      if user.reset_password(params[:password])
        render json: { status: 'ok' }, status: :ok
        session[:user_id] = user.id
      else
        render json: {error: user.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {error: ['Link is expired or not valid, please try again']}, status: :not_found
    end
  end
end
