json.array!(@c_narodnosts) do |c_narodnost|
  json.extract! c_narodnost, :id, :poradi, :kod, :nazev
  json.url c_narodnost_url(c_narodnost, format: :json)
end
