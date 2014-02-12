json.array!(@c_rodinny_stavs) do |c_rodinny_stav|
  json.extract! c_rodinny_stav, :id, :poradi, :kod, :nazev
  json.url c_rodinny_stav_url(c_rodinny_stav, format: :json)
end
