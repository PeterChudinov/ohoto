class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :image_url
      t.string :shop_name
      t.integer :likes_count
      t.references :shop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
