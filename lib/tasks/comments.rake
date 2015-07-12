namespace :comments do
  task check: :environment do
    Item.all.each do |item|
      CheckerCommentsJob.perform_later(item.id)
    end
  end
end
