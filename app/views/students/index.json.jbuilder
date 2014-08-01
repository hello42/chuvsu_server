json.array!(@students) do |student|
  json.extract! student, :id, :typeof, :title, :body
  json.url student_url(student, format: :json)
end
