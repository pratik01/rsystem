json.array!(@item_labels) do |item_label|
  json.extract! item_label, :id, :name
  json.url item_label_url(item_label, format: :json)
end
