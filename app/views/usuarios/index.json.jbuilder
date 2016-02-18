json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :usr_nome, :usr_cpf, :usr_sexo, :usr_matricula, :usr_senha, :tipo_usuarios_id
  json.url usuario_url(usuario, format: :json)
end
