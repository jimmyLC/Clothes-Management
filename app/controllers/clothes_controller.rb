class ClothesController < ApplicationController

  def index
    @clothes = Clothe.all
  end

  def show
    @clothe = Clothe.find(params[:id])
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(params_clothes)
    @clothe.save

    redirect_to clothes_path
  end

  def edit
     @clothe = Clothe.find(params[:id])
  end

  def update
     @clothe = Clothe.find(params[:id])
  end

  def destroy
     @clothe = Clothe.find(params[:id])
  end

  private
  def params_clothes
    params.require(:clothe).permit(:name, :description, :price)
  end

end
