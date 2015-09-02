class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image
      t.string :address1
      t.string :address2
      t.string :country
      t.string :state
      t.string :city
      t.string :zip_code
      t.string :latitude
      t.string :longitude
      t.boolean :is_publish
      t.boolean :is_active
      t.string :contact1
      t.string :contact2
      t.string :email
      t.text :description
      t.text :feature_list
      t.integer :no_of_tables
      t.timestamps
    end
  end
end
