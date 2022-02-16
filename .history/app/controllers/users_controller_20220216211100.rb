class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @user = 
    @prototypes = user.prototypes
  end
end
