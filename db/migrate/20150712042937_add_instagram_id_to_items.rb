class AddInstagramIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :instagram_id, :string
    add_column :items, :user_id, :integer
  end
end
