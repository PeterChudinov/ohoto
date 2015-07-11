class PhotosController < ApplicationController
  def all_media
    client = Instagram.client(:access_token => current_user.access_token)
  end
  
  def index
    @recent_media = Instagram.user_recent_media(current_user.uid, { :count => 21 })
    image_ig_id = @recent_media[2].id
    image_low_res_url = @recent_media[2].images.low_resolution.url
    image_standard_res_url = @recent_media[2].images.standard_resolution.url
    # image_tags[] = @recent_media[2].tags
    image_posted_at = @recent_media[2].created_at
    image_link = @recent_media[2].link
    image_likes_count = @recent_media[2].likes_count
    image_author = @recent_media[2].user
    image_caption = @recent_media[2].caption
    image_curator = current_user.id
   # respond_to do |format|
   #   format.html
   #   format.json { render :image_ig_id, :image_standard_res_url }
   # end
  end
end
