json.array!(@comments) do |comment|
  json.extract! comment, :user_id, :name, :content, :jinkaku, :kumo_id
  json.url comment_url(comment, format: :json)
end
