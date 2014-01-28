json.array!(@bullets) do |bullet|
  json.extract! bullet, :id, :text, :subject_id
  json.url bullet_url(bullet, format: :json)
end
