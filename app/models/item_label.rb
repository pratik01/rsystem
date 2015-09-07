class ItemLabel < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  belongs_to :item
  has_many :restaurant_items

  scope :itemLabel, lambda{|id| where(:id => id)}

  def self.findItemByRestaurantId(id)
    @items = ItemLabel.joins(:item,:restaurant_items).select("items.id,items.name").where("restaurant_items.restaurant_id=?",id).group("items.name,items.id")
  end

end
ItemLabel.import