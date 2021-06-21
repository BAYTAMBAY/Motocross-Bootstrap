class ModelsController < ApplicationController
  def index
    @model = Model.all
  end

  def show
    @model = Model.find(params[:id])
  end

  def new
    @model = Model.new
  end

  def create
    @model = Model.new(model_params)
    if @model.save
      redirect_to models_path
    else
      render :new
    end
  end

  def update
    @model = Model.find(params[:id])
    if @model.update(model_params)
      redirect_to models_path
    else
      render :update
    end
  end
  def edit
    @model=Model.find(params[:id])
  end

  def destroy
    @model=Model.find(params[:id])
    @model.destroy
    redirect_to models_path
  end
  
  private

  def model_params
    params.require(:model).permit(:name)
  end
end
