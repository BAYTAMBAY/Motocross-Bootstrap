class HomeController < ApplicationController
  def index
    @motorcycle = Motorcycle.all
  end
end
