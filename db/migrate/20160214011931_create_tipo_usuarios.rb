class CreateTipoUsuarios < ActiveRecord::Migration
  def change
    create_table :tipo_usuarios do |t|
      t.string :tpu_nome
      t.integer :tpu_status

      t.timestamps null: false
    end
  end
end
