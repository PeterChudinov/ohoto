json.array!(@items) do |u|
  json.id items.id
  json.title items.title
  json.image_url items.image_url
  json.likes_count items.likes_count
end

=begin
                "id": 1,
                "title": "наша вариация на тему - самолет ✈️ и девушка 🙋🏻 #maito #maitoshop #tunic #coat #linen #moscow #russiandesign",
                "image_url": "https://igcdn-photos-b-a.akamaihd.net/hphotos-ak-xaf1/t51.2885-15/11378001_1605449329742537_1882501277_n.jpg",
                "shop_name": "maitoshop",
                "likes_count": 19
=end