class PhotosController < ApplicationController
  def index
    @recent_media = client.user_liked_media(access_token: current_user.access_token)
  end
end
