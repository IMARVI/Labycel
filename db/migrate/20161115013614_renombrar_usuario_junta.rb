class RenombrarUsuarioJunta < ActiveRecord::Migration[5.0]
  def change
    rename_table :usuario_junta, :juntum_usuarios
  end
end
