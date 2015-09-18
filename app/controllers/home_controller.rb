class HomeController < ApplicationController
  include ItemLabelsHelper
  include ItemsHelper
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant_items = RestaurantItem.where("restaurant_id=?",params[:id])
    @item_label_ids = @restaurant_items.map{|ri| ri.item_label_id}
    @item_labels = getItemLabelByItemArray(@item_label_ids)
    @item_ids = @item_labels.map{|il| il.item_id}
    @items = getItemsByItemIds(@item_ids)
  end
end
