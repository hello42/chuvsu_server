json.array!(@phones) do |phone|
  json.extract! phone, :id, :title, :number
  json.url phone_url(phone, format: :json)
end
