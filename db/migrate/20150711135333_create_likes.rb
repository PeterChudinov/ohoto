class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :instagram_id
      t.string :link
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
