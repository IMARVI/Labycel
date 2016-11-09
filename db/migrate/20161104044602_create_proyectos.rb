class CreateProyectos < ActiveRecord::Migration[5.0]
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.datetime :fecha_inicio
      t.datetime :fecha_final

      t.timestamps
    end
  end
end
