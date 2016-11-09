class CreateJunta < ActiveRecord::Migration[5.0]
  def change
    create_table :junta do |t|
      t.string :nombre
      t.datetime :fecha
      t.text :descripcion

      t.timestamps
    end
  end
end
