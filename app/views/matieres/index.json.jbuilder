json.array!(@matieres) do |matiere|
  json.extract! matiere, :id, :lib_mat
  json.url matiere_url(matiere, format: :json)
end
