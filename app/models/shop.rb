class Shop < ActiveRecord::Base
  has_many :items

  def get_info
    info = Instagram.user(instagram_id)
    self.instagram_name = info.username
    self.name = info.full_name
    self.image_url = info.profile_picture
    self.bio = info.bio
    self.save
  end
end
