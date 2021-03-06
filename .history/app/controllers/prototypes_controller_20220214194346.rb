class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.new

  end

  def create
    if Prototype.create(prototype_params)
      redirect_to root_path
    else
      render :
    end

  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image),merge(user_id: current_user.id)
  end
end
