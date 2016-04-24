json.array!(@forums) do |forum|
  json.extract! forum, :id, :title, :author, :entry
  json.url forum_url(forum, format: :json)
end
