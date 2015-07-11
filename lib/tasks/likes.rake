namespace :likes do
  task get: :environment do
    User.all.each do |user|
      LikesJob.perform_later(user.id)
    end
  end
end
