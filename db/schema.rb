# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160215014848) do

  create_table "cursodisciplinas", force: :cascade do |t|
    t.integer  "curso_id",      limit: 4
    t.integer  "disciplina_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "cursodisciplinas", ["curso_id"], name: "index_cursodisciplinas_on_curso_id", using: :btree
  add_index "cursodisciplinas", ["disciplina_id"], name: "index_cursodisciplinas_on_disciplina_id", using: :btree

  create_table "cursos", force: :cascade do |t|
    t.integer  "cur_status",        limit: 4
    t.string   "cur_nome",          limit: 255
    t.integer  "cur_tempo_duracao", limit: 4
    t.date     "cur_data_inicio"
    t.date     "cur_data_termino"
    t.float    "cur_valor",         limit: 24
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "dadosacessos", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "dac_ip",     limit: 255
    t.integer  "usuario_id", limit: 4
  end

  add_index "dadosacessos", ["usuario_id"], name: "index_dadosacessos_on_usuario_id", using: :btree

  create_table "disciplinas", force: :cascade do |t|
    t.integer  "dis_status", limit: 4
    t.string   "dis_nome",   limit: 255
    t.string   "dis_imagem", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "escolas", force: :cascade do |t|
    t.string   "esc_nome",   limit: 255
    t.integer  "esc_status", limit: 4
    t.string   "esc_qre",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string   "tpu_nome",   limit: 255
    t.integer  "tpu_status", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.string   "tur_nome",            limit: 255
    t.integer  "tur_status",          limit: 4
    t.integer  "tur_vagas",           limit: 4
    t.datetime "tur_horario_entrada"
    t.datetime "tur_horario_saida"
    t.integer  "curso_id",            limit: 4
    t.integer  "escola_id",           limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "turmas", ["curso_id"], name: "index_turmas_on_curso_id", using: :btree
  add_index "turmas", ["escola_id"], name: "index_turmas_on_escola_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "usr_nome",        limit: 255
    t.string   "usr_cpf",         limit: 255
    t.string   "usr_sexo",        limit: 255
    t.string   "usr_matricula",   limit: 255
    t.string   "usr_senha",       limit: 255
    t.integer  "tipo_usuario_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "usuarios", ["tipo_usuario_id"], name: "index_usuarios_on_tipo_usuario_id", using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "vid_titulo",    limit: 255
    t.string   "vid_descricao", limit: 255
    t.string   "vid_link",      limit: 255
    t.integer  "disciplina_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "videos", ["disciplina_id"], name: "index_videos_on_disciplina_id", using: :btree

  add_foreign_key "cursodisciplinas", "cursos"
  add_foreign_key "cursodisciplinas", "disciplinas"
  add_foreign_key "dadosacessos", "usuarios"
  add_foreign_key "turmas", "cursos"
  add_foreign_key "turmas", "escolas"
  add_foreign_key "usuarios", "tipo_usuarios"
  add_foreign_key "videos", "disciplinas"
end
