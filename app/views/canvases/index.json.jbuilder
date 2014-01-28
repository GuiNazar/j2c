json.array!(@canvases) do |canvas|
  json.extract! canvas, :id, :title
  json.url canvas_url(canvas, format: :json)
end
