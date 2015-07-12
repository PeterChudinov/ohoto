class ItemsCommentsWhatsapp < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.integer :comments_count
      t.string :shop_whatsapp
    end
  end
end
