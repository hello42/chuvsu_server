json.array!(@addresses) do |address|
  json.extract! address, :id, :title, :address, :image, :coord
  json.url address_url(address, format: :json)
end
