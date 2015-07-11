class UsersApi < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :instagram_url, :instagram_name, :image_url
      t.integer :items_count
    end
  end
end
