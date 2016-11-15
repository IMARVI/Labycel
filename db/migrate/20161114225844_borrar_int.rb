class BorrarInt < ActiveRecord::Migration[5.0]
  def change
    remove_column :usuario_junta, :int
  end
end
