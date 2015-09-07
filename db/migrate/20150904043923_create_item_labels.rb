class CreateItemLabels < ActiveRecord::Migration
  def change
    create_table :item_labels do |t|
      t.string :name
      t.belongs_to :item
      t.timestamps
    end
  end
end
