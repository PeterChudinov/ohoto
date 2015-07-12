class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:instagram]

  has_many :likes
  
  def get_likes
    Instagram.user_liked_media(access_token: self.access_token).each do |like|
      Item.create(
        title: like.caption.text,
        image_url: like.link,
        # user_id: self.id,
        comments_count: like.comments['count'],
        likes_count: like.likes['count'],
        shop: Shop.where(instagram_name: like.user.username).first_or_create do |shop|
          shop.image_url = like.user.profile_picture
          shop.name = like.user.full_name
        end
      )
    end
  end
  
  def self.from_omniauth(auth)  
    user = where(provider: auth.provider, uid: auth.uid).first_or_create do |u|
      u.provider = auth.provider
      u.uid = auth.uid
      u.email = auth.info.email
      u.email = "#{auth.uid}@instagram.com" unless u.email
      u.password = Devise.friendly_token[0,20]
    end
    
    user.update!(access_token: auth.credentials.token )
    user
  end
end
