json.array!(@abiturients) do |abiturient|
  json.extract! abiturient, :id, :title, :body, :img, :url, :notification, :updated_at, :created_at
  json.url abiturient_url(abiturient, format: :json)
end
