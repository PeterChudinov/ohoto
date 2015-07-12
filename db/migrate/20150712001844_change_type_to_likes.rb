class ChangeTypeToLikes < ActiveRecord::Migration
  def change
    change_column :likes, :instagram_id, :integer, limit: 8
  end
end
