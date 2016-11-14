class CreateUsuarioProyectos < ActiveRecord::Migration[5.0]
  def change
    create_table :usuario_proyectos do |t|
      t.integer :usuario_id
      t.integer :proyecto_id

      t.timestamps
    end
  end
end
