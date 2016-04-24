json.array!(@communities) do |community|
  json.extract! community, :id, :activity, :gamertag, :description
  json.url community_url(community, format: :json)
end
