json.array!(@escolas) do |escola|
  json.extract! escola, :id, :esc_nome, :esc_status, :esc_qre
  json.url escola_url(escola, format: :json)
end
