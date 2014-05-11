json.array!(@facults) do |facult|
  json.extract! facult, :id, :name, :logo, :info, :url
  facult_url(facult, format: :json)
end
