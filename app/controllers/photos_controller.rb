class PhotosController < ApplicationController
  def index
    @recent_media = client.user_liked_media
  end
end
