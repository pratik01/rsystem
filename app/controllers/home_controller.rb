class HomeController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show

  end
end
