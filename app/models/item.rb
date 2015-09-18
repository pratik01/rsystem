class Item < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  has_many :item_labels

  before_destroy :delete_parents

  private
  def delete_parents
    puts "call method"
  end

end
Item.import