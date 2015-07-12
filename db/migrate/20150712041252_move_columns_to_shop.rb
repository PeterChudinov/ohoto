class MoveColumnsToShop < ActiveRecord::Migration
  def change
    remove_column :items, :shop_name
    remove_column :items, :shop_whatsapp
    add_column :shops, :whatsapp, :string
  end
end
