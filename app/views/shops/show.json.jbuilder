json.array!(@shops) do |u|
  json.id u.id
  json.name u.name
  json.instagram_url u.instagram_url
  json.instagram_name u.instagram_name
  json.image_url u.image_url
  json.items []
end

=begin
            "name": "MAITO",
            "instagram_url": "https://instagram.com/maitoshop",
            "instagram_name": "maitoshop",
            "image": "https://igcdn-photos-c-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-19/10802686_1500965773511410_252238319_a.jpg",
            "items":  [
                // айтемы
            ]
=end