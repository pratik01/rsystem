class Item < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  has_many :item_labels



end
Item.import