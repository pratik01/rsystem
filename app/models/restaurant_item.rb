class RestaurantItem < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  belongs_to :item_label
  belongs_to :restaurant

  def self.findByItemLabelAndRestaurant(il,rid)
    @restaurant_items = RestaurantItem.where("restaurant_id=? AND item_label_id=?",rid,il)
  end
end
RestaurantItem.import