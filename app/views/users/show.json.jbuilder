json.id @user.id
json.name @user.name
json.bio @user.bio
json.instagram_url @user.instagram_url
json.instagram_name @user.instagram_name
json.image_url @user.image_url

json.items @user.items, partial: 'items/show', as: :item


=begin
"name": "Egor Eremeev",
            "instagram_url": "https://instagram.com/eremeev.egor",
            "instagram_name": "eremeev.egor",
            "image_url": "https://igcdn-photos-c-a.akamaihd.net/hphotos-ak-xfa1/t51.2885-19/10802686_1500965773511410_252238319_a.jpg",
            "items":  [
                // айтемы
            ]
=end