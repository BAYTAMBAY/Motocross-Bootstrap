class RequestsController < ApplicationController

  def new
  end

  def create

    @request = Request.new(request_params)
    if @request.save
      redirect_to root_path
    else
      render :new
    end
end

  def request_params
    params.require(:request).permit(:name, :surname, :email, :phone_number, :message)
  end
end
