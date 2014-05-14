json.array!(@abiturients) do |abiturient|
  json.extract! abiturient, :id, :title, :body, :img, :url
  json.url abiturient_url(abiturient, format: :json)
end
