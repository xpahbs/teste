json.array!(@disciplinas) do |disciplina|
  json.extract! disciplina, :id, :dis_status, :dis_nome, :dis_imagem
  json.url disciplina_url(disciplina, format: :json)
end
