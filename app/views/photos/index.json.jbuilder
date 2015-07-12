json.array!(@recent_media) do |media|
  json.id media.id
  json.url media.images.low_resolution.url
end

