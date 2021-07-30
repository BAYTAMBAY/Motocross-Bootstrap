class Admin::RequestsController < ApplicationController
  
  def index
    @request = Request.all
  end
  def show
    @request = Request.find(params[:id])
  end
  layout 'admin/application'
end
