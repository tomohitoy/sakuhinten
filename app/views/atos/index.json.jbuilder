json.array!(@atos) do |ato|
  json.extract! ato, :image, :kumo_id
  json.url ato_url(ato, format: :json)
end
