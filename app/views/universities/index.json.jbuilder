json.array!(@universities) do |university|
  json.extract! university, :id, :title, :body
  json.url university_url(university, format: :json)
end
