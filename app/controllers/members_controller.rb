class MembersController < ApplicationController
    def index
        @user = current_user
        render json: @user
    end
end
