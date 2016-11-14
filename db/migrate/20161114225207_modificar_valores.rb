class ModificarValores < ActiveRecord::Migration[5.0]
  def change
    change_column :usuario_junta, :usuario_id, :integer
    change_column :usuario_junta, :juntum_id, :integer
  end
end
