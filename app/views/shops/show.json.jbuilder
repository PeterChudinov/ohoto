json.id @shop.id
json.name @shop.name
json.bio @shop.bio
json.instagram_url @shop.instagram_url
json.instagram_name @shop.instagram_name
json.image_url @shop.image_url

json.items @shop.items, partial: 'items/show', as: :item
# json.items @shop.items  do |item|
#   json.id item.id
# end

=begin
            "name": "MAITO",
            "instagram_url": "https://instagram.com/maitoshop",
            "instagram_name": "maitoshop",
            "image": "https://igcdn-photos-c-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-19/10802686_1500965773511410_252238319_a.jpg",
            "items":  [
                // айтемы
            ]
=end