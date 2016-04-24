json.array!(@merches) do |merch|
  json.extract! merch, :id, :item, :price, :size
  json.url merch_url(merch, format: :json)
end
