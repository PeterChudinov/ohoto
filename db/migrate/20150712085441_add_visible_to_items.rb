class AddVisibleToItems < ActiveRecord::Migration
  def change
    add_column :items, :visible, :boolean
  end
end
