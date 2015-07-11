json.array!(@shops) do |u|
  json.name u.name
  json.instagram_url u.instagram_url
  json.instagram_name u.instagram_name
  json.image_url u.image_url
  json.items_count u.items_count
end

=begin
"name": "MAITO",
    "instagram_url": "https://instagram.com/maitoshop",
    "instagram_name": "maitoshop",
    "image_url": "https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-19/11333303_1615931165329372_913527992_a.jpg",
    "items_count": 0
=end