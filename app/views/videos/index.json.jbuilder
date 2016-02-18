json.array!(@videos) do |video|
  json.extract! video, :id, :vid_titulo, :vid_descricao, :vid_link, :disciplina_id
  json.url video_url(video, format: :json)
end
