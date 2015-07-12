class ItemsCommentsWhatsapp < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.integer :comments_count
      t.string :shop_whatsapp
      t.string :shop_name
    end
  end
end
