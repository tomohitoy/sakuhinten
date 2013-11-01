json.array!(@maes) do |mae|
  json.extract! mae, :image, :kumo_id
  json.url mae_url(mae, format: :json)
end
