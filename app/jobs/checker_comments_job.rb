class CheckerCommentsJob < ActiveJob::Base
  queue_as :default

  def perform(item_id)
    item = Item.find(item_id)
    data = Instagram.client(access_token: item.user.access_token).media_item(item.instagram_id)
    text = data.comments.data.find {|comment| comment.from.username == item.user.instagram_name }.try(:text)
    
    if text.nil?
      item.visible = false
    else
      tags = text.scan(/#(\S+)/)
      if tags.empty?
        item.visible = false
      else
        item.tags = tags.flatten
        item.visible = true
      end
    end
    item.save
  end
end
