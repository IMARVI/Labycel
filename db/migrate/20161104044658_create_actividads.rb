class CreateActividads < ActiveRecord::Migration[5.0]
  def change
    create_table :actividads do |t|
      t.string :nombre
      t.text :descripcion
      t.boolean :estatus
      t.datetime :fecha_inicio
      t.datetime :fecha_final

      t.timestamps
    end
  end
end
