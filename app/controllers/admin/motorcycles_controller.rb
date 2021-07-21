class Admin::MotorcyclesController < ApplicationController

  def index
    @motorcycle = Motorcycle.all
  end

  def show
    @motorcycle = Motorcycle.find(params[:id])
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    if @motorcycle.save
      redirect_to admin_motorcycles_path
    else
      render :new
    end
  end

  def update
    @motorcycle = Motorcycle.find(params[:id])
    if @motorcycle.update(motorcycle_params)
      redirect_to admin_motorcycles_path
    else
      render :update
    end
  end
  def edit
    @motorcycle=Motorcycle.find(params[:id])
  end

  def destroy
    @motorcycle=Motorcycle.find(params[:id])
    @motorcycle.destroy
    redirect_to admin_motorcycles_path
  end

  private

  def motorcycle_params
    params.require(:motorcycle).permit(:name, :description, :price,:picture_id,:model_id)
  end
end
