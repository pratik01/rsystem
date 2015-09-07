class RestaurantFeature < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  belongs_to :restaurant



end
RestaurantFeature.import