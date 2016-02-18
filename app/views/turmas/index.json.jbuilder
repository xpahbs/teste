json.array!(@turmas) do |turma|
  json.extract! turma, :id, :tur_nome, :tur_status, :tur_vagas, :tur_horario_entrada, :tur_horario_saida, :curso_id, :escola_id
  json.url turma_url(turma, format: :json)
end
