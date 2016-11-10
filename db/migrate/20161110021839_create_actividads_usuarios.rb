class CreateActividadsUsuarios < ActiveRecord::Migration[5.0]
  def self.up
    create_table :actividads_usuarios, id: false do |t|
      t.references :actividad, null: false
      t.references :usuario, null: false
    end

    add_index(:actividads_usuarios, [:actividad_id, :usuario_id], :unique => true)
  end

  def self.down
    drop_table :actividads_usuarios
  end
end
