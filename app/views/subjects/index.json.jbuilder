json.array!(@subjects) do |subject|
  json.extract! subject, :id, :title, :takeaway, :canvas_id
  json.url subject_url(subject, format: :json)
end
