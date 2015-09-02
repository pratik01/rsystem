class AddPriceToRestaurantItem < ActiveRecord::Migration
  def change
    add_column :restaurant_items, :price, :float
  end
end
