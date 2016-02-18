json.array!(@dadosacessos) do |dadosacesso|
  json.extract! dadosacesso, :id, :dac_data_acesso, :dac_ip, :usuario_id
  json.url dadosacesso_url(dadosacesso, format: :json)
end
