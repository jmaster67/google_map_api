json.array!(@weedpens) do |weedpen|
  json.extract! weedpen, :id, :latitude, :longitude, :address, :description, :title
  json.url weedpen_url(weedpen, format: :json)
end
