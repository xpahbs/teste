class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.integer :dis_status
      t.string :dis_nome
      t.string :dis_imagem

      t.timestamps null: false
    end
  end
end
