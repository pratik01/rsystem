module RestaurantItemsHelper

  def getRestaurantItem(il_id)
    @restaurant = Restaurant.where("user_id=?",current_user.id)
#    @restaurant_items = RestaurantItem.where("item_label_id=?,restaurant_id=?",il_id,@restaurant.id)
  end
end
