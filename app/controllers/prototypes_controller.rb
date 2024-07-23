class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to prototypes_path, notice: 'Prototype was successfully created.'
    else
      render :new
    end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image)
  end
end