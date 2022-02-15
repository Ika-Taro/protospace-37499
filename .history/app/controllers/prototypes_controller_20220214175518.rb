class PrototypesController < ApplicationController
  def index
  end

  def new

  end

  def create
    @prototype = Prototype.new
  end
end
