class CreateRestaurantItems < ActiveRecord::Migration
  def change
    create_table :restaurant_items do |t|
      t.string :name
      t.text :short_description
      t.float :price
      t.belongs_to :restaurant
      t.belongs_to :item_label
      t.timestamps
    end
  end
end
