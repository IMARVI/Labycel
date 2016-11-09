class CreateModificacions < ActiveRecord::Migration[5.0]
  def change
    create_table :modificacions do |t|
      t.integer :proyecto_id
      t.integer :usuario_id
      t.datetime :fecha

      t.timestamps
    end
  end
end
