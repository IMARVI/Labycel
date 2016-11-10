class CreateProyectosUsuarios < ActiveRecord::Migration[5.0]
  def self.up
    create_table :proyectos_usuarios do |t|
      t.references :proyecto, null: false
      t.references :usuario, null: false
    end

    add_index(:proyectos_usuarios, [:proyecto_id, :usuario_id], :unique => true)
    end

    def self.down
      drop_table :proyectos_usuarios
    end
end
