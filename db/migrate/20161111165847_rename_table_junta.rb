class RenameTableJunta < ActiveRecord::Migration[5.0]
  def change
    rename_table :junta_usuarios , :juntum_usuarios
  end
end
