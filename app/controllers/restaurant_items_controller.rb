class RestaurantItemsController < ApplicationController
  before_action :set_restaurant_item, only: [:show, :edit, :update, :destroy]

  respond_to :html,:json

  def index
    @restaurant_items = RestaurantItem.all
    respond_with(@restaurant_items)
  end

  def show
    respond_with(@restaurant_item)
  end

  def new
    @restaurant_item = RestaurantItem.new
    respond_with(@restaurant_item)
  end

  def edit
  end

  def create
    @restaurant_item = RestaurantItem.new(restaurant_item_params)
    @restaurant_item.save
    respond_with(@restaurant_item)
  end

  def update
    @restaurant_item.update(restaurant_item_params)
    respond_with(@restaurant_item)
  end

  def destroy
    @restaurant_item.destroy
    respond_with(@restaurant_item)
  end

  private
    def set_restaurant_item
      @restaurant_item = RestaurantItem.find(params[:id])
    end

    def restaurant_item_params
      params.require(:restaurant_item).permit(:name, :short_description)
    end
end
