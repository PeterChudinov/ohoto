json.array!(@items) do |u|
  json.id u.id
  json.title u.title
  json.image_url u.image_url
  json.likes_count u.likes_count
  json.comments_count u.comments_count
  json.shop_whatsapp u.shop_whatsapp
  json.shop_name u.shop_name
end

=begin
                "id": 1,
                "title": "наша вариация на тему - самолет ✈️ и девушка 🙋🏻 #maito #maitoshop #tunic #coat #linen #moscow #russiandesign",
                "image_url": "https://igcdn-photos-b-a.akamaihd.net/hphotos-ak-xaf1/t51.2885-15/11378001_1605449329742537_1882501277_n.jpg",
                "shop_name": "maitoshop",
                "likes_count": 19
=end