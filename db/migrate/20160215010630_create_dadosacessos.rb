class CreateDadosacessos < ActiveRecord::Migration
  def change
    create_table :dadosacessos do |t|
      t.timestamps :dac_data_acesso
      t.string :dac_ip
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
