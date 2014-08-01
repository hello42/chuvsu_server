json.array!(@organisations) do |organisation|
  json.extract! organisation, :id, :typeof, :name, :body
  json.url organisation_url(organisation, format: :json)
end
