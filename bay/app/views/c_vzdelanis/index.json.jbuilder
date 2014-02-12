json.array!(@c_vzdelanis) do |c_vzdelani|
  json.extract! c_vzdelani, :id, :poradi, :kod, :nazev
  json.url c_vzdelani_url(c_vzdelani, format: :json)
end
