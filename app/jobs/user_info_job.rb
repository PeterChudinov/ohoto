class UserInfoJob < ActiveJob::Base
  queue_as :default

  def perform(user_id)
    User.find(user_id).get_info
  end
end
