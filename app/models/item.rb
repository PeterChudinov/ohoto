class Item < ActiveRecord::Base
  belongs_to :shop, counter_cache: true
  belongs_to :user, counter_cache: true
end
