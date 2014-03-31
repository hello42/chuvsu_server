json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :info
  json.url teacher_url(teacher, format: :json)
end
