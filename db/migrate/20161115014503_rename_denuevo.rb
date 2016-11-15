class RenameDenuevo < ActiveRecord::Migration[5.0]
  def change
    rename_table :juntum_usuarios, :usuario_junta
  end
end
