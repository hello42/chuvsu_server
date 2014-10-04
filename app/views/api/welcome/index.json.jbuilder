json.news @news

json.annonces(@annonces) do |annonce|
  json.extract! annonce, :id, :title, :date, :body, :notification
  json.image "#{root_url}#{(annonce.image)}"
  json.url annonce_url(annonce, format: :json)
end

json.pages @pages
json.organisations @organisations
json.students @students
json.facults @facults
json.phones @phones
json.address @address

