class ClothesController < ApplicationController
  before_action :find_params, :only => [:show, :edit, :update, :destroy]

  def index
    @clothes = Clothe.all
  end

  def show
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(params_clothes)
    if @clothe.save
      redirect_to clothes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @clothe.update(params_clothes)
      redirect_to clothe_path(@clothe)
    else
      render :edit
    end
  end

  def destroy
    @clothe.destroy
    redirect_to clothes_path
  end

  private
  def  find_params
    @clothe = Clothe.find(params[:id])
  end

  def params_clothes
    params.require(:clothe).permit(:name, :description, :price)
  end

end
