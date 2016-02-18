class CreateCursodisciplinas < ActiveRecord::Migration
  def change
    create_table :cursodisciplinas do |t|
      t.references :curso, index: true, foreign_key: true
      t.references :disciplina, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
