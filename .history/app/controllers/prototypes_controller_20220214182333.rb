class PrototypesController < ApplicationController
  def index
  end

  def new

  end

  def create
    @prototype = Prototype.new
  end

  private

  def prototype_params
    params.require(:prototype).permit(:)
  end
end
