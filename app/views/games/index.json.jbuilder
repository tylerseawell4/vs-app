json.array!(@games) do |game|
  json.extract! game, :id, :game_title
  json.url game_url(game, format: :json)
end
