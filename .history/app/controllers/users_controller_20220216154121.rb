class UsersController < ApplicationController

  def show
    @user = User.includes(:user)
  end
end
