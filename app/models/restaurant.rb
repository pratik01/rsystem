class Restaurant < ActiveRecord::Base
  has_many :restaurant_features
  has_many :restaurant_items
  belongs_to :user
  mount_uploader :image, ImageUploader

  geocoded_by :zip_code
  after_validation :geocode


end