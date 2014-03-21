json.array!(@facults) do |facult|
  json.extract! facult, :id, :name, :logo, :info
  json.url facult_url(facult, format: :json)
end
