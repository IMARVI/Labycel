class CreateUsuarioJunta < ActiveRecord::Migration[5.0]
  def change
    create_table :usuario_junta do |t|
      t.string :usuario_id
      t.string :int
      t.string :juntum_id
      t.string :int

      t.timestamps
    end
  end
end
