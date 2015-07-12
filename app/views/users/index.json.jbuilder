json.array!(@users) do |u|
  json.id u.id
  json.name u.name
  json.bio u.bio
  json.instagram_url u.instagram_url
  json.instagram_name u.instagram_name
  json.image_url u.image_url
  json.items_count u.items.visible.count
end


=begin
"id": 1,
"name": "Egor Eremeev",
"instagram_url": "https://instagram.com/eremeev.egor",
"instagram_name": "eremeev.egor",
"image": "https://igcdn-photos-c-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-19/10802686_1500965773511410_252238319_a.jpg",
"items_count": 0
=end