class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @user = user
    @prototypes = Prototype.all
  end
end
