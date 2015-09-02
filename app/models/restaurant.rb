class Restaurant < ActiveRecord::Base
  has_many :restaurant_features
  has_many :restaurant_items
  mount_uploader :image, ImageUploader
end
