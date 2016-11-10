class CreateJuntaUsuarios < ActiveRecord::Migration[5.0]
  def self.up
    create_table :junta_usuarios do |t|
      t.references :juntum, null: false
      t.references :usuario, null: false
    end

    add_index(:junta_usuarios, [:juntum_id, :usuario_id], :unique => true)
  end

  def self.down
    drop_table :junta_usuarios
  end
end
