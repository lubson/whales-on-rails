json.array!(@c_povolanis) do |c_povolani|
  json.extract! c_povolani, :id, :poradi, :kod, :nazev
  json.url c_povolani_url(c_povolani, format: :json)
end
