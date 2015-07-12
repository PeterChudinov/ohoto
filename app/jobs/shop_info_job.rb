class ShopInfoJob < ActiveJob::Base
  queue_as :default

  def perform(shop_id)
    Shop.find(shop_id).get_info
  end
end
