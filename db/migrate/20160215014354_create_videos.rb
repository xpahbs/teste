class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :vid_titulo
      t.string :vid_descricao
      t.string :vid_link
      t.references :disciplina, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
