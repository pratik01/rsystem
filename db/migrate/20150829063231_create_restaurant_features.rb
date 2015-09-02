class CreateRestaurantFeatures < ActiveRecord::Migration
  def change
    create_table :restaurant_features do |t|
      t.string :name
      t.belongs_to :restaurant
      t.timestamps
    end
  end
end
