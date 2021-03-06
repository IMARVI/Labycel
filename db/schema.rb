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

ActiveRecord::Schema.define(version: 20161115222306) do

  create_table "actividads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.text     "descripcion",  limit: 65535
    t.boolean  "estatus"
    t.datetime "fecha_inicio"
    t.datetime "fecha_final"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "proyecto_id"
  end

  create_table "junta", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.datetime "fecha"
    t.text     "descripcion", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "juntum_usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "juntum_id"
    t.integer  "usuario_id"
  end

  create_table "modificacions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "proyecto_id"
    t.integer  "usuario_id"
    t.datetime "fecha"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "proyectos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.datetime "fecha_inicio"
    t.datetime "fecha_final"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "proyectos_usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "proyecto_id", null: false
    t.integer "usuario_id",  null: false
    t.index ["proyecto_id", "usuario_id"], name: "index_proyectos_usuarios_on_proyecto_id_and_usuario_id", unique: true, using: :btree
    t.index ["proyecto_id"], name: "index_proyectos_usuarios_on_proyecto_id", using: :btree
    t.index ["usuario_id"], name: "index_proyectos_usuarios_on_usuario_id", using: :btree
  end

  create_table "usuario_proyectos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "usuario_id"
    t.integer  "proyecto_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.string   "contraseña"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "permiso"
    t.integer  "estado"
  end

end
