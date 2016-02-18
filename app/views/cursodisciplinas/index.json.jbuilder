json.array!(@cursodisciplinas) do |cursodisciplina|
  json.extract! cursodisciplina, :id, :curso_id, :disciplina_id
  json.url cursodisciplina_url(cursodisciplina, format: :json)
end
