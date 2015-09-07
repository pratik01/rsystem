module RestaurantsHelper

  def getCurrentUserRestaurant
    @restaurants = Restaurant.where("user_id=?",current_user.id)
  end

end
