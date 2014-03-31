json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :number, :star, :teacher_id, :info
  json.url subject_url(subject, format: :json)
end
