class CreateEscolas < ActiveRecord::Migration
  def change
    create_table :escolas do |t|
      t.string :esc_nome
      t.integer :esc_status
      t.string :esc_qre

      t.timestamps null: false
    end
  end
end
