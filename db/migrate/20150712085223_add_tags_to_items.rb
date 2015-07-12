class AddTagsToItems < ActiveRecord::Migration
  def change
    add_column :items, :tags, :string, array: true
  end
end
