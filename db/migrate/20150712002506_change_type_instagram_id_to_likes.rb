class ChangeTypeInstagramIdToLikes < ActiveRecord::Migration
  def change
    change_column :likes, :instagram_id, :string
  end
end
