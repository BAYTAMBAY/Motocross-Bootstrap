class HomeController < ApplicationController
  def index
    @motorcycle = Motorcycle.all
    @courses = Course.all
  end
end
