json.array!(@games) do |game|
  json.extract! game, :id, :name, :detail
  json.url game_url(game, format: :json)
end
