class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :tur_nome
      t.integer :tur_status
      t.integer :tur_vagas
      t.datetime :tur_horario_entrada
      t.datetime :tur_horario_saida
      t.references :curso, index: true, foreign_key: true
      t.references :escola, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
