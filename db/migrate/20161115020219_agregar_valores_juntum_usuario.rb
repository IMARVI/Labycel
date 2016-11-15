class AgregarValoresJuntumUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :juntum_usuarios, :juntum_id, :integer
    add_column :juntum_usuarios, :usuario_id, :integer
  end
end
