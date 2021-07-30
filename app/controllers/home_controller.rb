class HomeController < ApplicationController
  def index
    
    @motorcycle = Motorcycle.all
    @courses = Course.all
    
  end
  def create_request
    
    @request = Request.new
    @request.name = params[:request][:name]
    @request.surname = params[:request][:surname]
    @request.email = params[:request][:email]
    @request.phone_number = params[:request][:phone_number]
    @request.message = params[:request][:message]
    @request.save!
    redirect_to root_path 

  end

end
