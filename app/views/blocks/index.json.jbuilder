json.array!(@blocks) do |block|
  json.extract! block, :id, :title, :takeaway, :canvas_id
  json.url block_url(block, format: :json)
end
