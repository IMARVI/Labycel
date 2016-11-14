class DropTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :proyecto_usuarios
    drop_table :juntum_usuarios
    drop_table :actividads_usuarios
  end
end
