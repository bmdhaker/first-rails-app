json.array!(@classes) do |class|
  json.extract! class, :id, :lib_clas
  json.url class_url(class, format: :json)
end
