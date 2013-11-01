json.array!(@kumos) do |kumo|
  json.extract! kumo, :user_id, :title, :name
  json.url kumo_url(kumo, format: :json)
end
