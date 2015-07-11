class LikesJob < ActiveJob::Base
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    user.get_likes
  end
end
