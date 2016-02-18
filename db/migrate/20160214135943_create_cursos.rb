class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.integer :cur_status
      t.string :cur_nome
      t.integer :cur_tempo_duracao
      t.date :cur_data_inicio
      t.date :cur_data_termino
      t.float :cur_valor

      t.timestamps null: false
    end
  end
end
