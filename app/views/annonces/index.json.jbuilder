json.array!(@annonces) do |annonce|
  json.extract! annonce, :id, :title, :date, :body, :notification
  json.image "#{root_url}#{(annonce.image)}"
  json.url annonce_url(annonce, format: :json)
end
