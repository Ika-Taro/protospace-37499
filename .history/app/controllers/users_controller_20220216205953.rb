class UsersController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @prototypes = Prototype.all
  end
end
