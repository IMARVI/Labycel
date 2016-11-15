class DropUsuarioJunta < ActiveRecord::Migration[5.0]
  def change
    drop_table :usuario_junta
  end
end
