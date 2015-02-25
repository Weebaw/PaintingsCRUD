class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    @painting.save
    flash[:notice] = "Your painting was saved"
    redirect_to paintings_path
  end

  def show
    @painting = Painting.find(params[:id])
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    @painting.update(painting_params)
    flash[:notice] = "Painting was updated"
    redirect_to paintings_path
  end

  def destroy
    @painting = Painting.find(params[:id])
    flash[:notice] = "deleted"
    redirect_to paintings_path
  end
  
private

  def painting_params
    painting_params = params.require(:painting).permit(:artist, :year, :description, :country)
  end

end
