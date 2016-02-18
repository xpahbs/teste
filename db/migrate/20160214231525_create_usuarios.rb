class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :usr_nome
      t.string :usr_cpf
      t.string :usr_sexo
      t.string :usr_matricula
      t.string :usr_senha
      t.references :tipo_usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
