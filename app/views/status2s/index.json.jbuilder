json.array!(@status2s) do |status2|
  json.extract! status2, :id, :name, :content
  json.url status2_url(status2, format: :json)
end
