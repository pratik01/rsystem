class Restaurant < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  has_many :restaurant_features
  has_many :restaurant_items
  belongs_to :user
  mount_uploader :image, ImageUploader

  def self.search(params = {})
    tire.search(load: true) do
      query { string params[:query]} if params[:query].present?
    end
  end


end
Restaurant.import