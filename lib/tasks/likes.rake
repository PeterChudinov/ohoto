namespace :likes do
  task get: :environment do
    User.each do |user|
      LikesJob.perform_later(user_id)
    end
  end
end
