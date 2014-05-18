json.array!(@niveaus) do |niveau|
  json.extract! niveau, :id, :lib_niv
  json.url niveau_url(niveau, format: :json)
end
