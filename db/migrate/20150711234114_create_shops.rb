class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :instagram_url
      t.string :instagram_name
      t.string :image_url
      t.integer :items_count

      t.timestamps null: false
    end
  end
end
