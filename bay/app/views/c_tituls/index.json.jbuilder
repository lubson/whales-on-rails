json.array!(@c_tituls) do |c_titul|
  json.extract! c_titul, :id, :poradi, :kod, :nazev
  json.url c_titul_url(c_titul, format: :json)
end
