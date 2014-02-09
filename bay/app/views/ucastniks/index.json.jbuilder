json.array!(@ucastniks) do |ucastnik|
  json.extract! ucastnik, :id, :jmeno, :prijmeni, :narozen, :pohlavi
  json.url ucastnik_url(ucastnik, format: :json)
end
