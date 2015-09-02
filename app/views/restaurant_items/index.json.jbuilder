json.array!(@restaurant_items) do |restaurant_item|
  json.extract! restaurant_item, :id, :name, :short_description
  json.url restaurant_item_url(restaurant_item, format: :json)
end
