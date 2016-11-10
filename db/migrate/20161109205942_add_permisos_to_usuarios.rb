class AddPermisosToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :permiso, :integer
    add_column :usuarios, :estado, :boolean
  end
end
