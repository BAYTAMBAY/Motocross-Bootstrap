class HomeController < ApplicationController
  def index
    
    @motorcycle = Motorcycle.all
    @courses = Course.all
    

    
  end
  def create_request
    
    @request = Request.new
    @request.name = params[:request][:name]
    @request.email = params[:request][:email]
    @request.message = params[:request][:message]
    @request.save!
    redirect_to root_path 

  end

end
