json.array!(@cursos) do |curso|
  json.extract! curso, :id, :cur_status, :cur_nome, :cur_tempo_duracao, :cur_data_inicio, :cur_data_termino, :cur_valor
  json.url curso_url(curso, format: :json)
end
