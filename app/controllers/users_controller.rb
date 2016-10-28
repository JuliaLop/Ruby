class UsersController < ApplicationController
    def show
        @user = User.includes(:messages).find(params[:id])
    end
end