class AddColumActividads < ActiveRecord::Migration[5.0]
  def change
    add_column :actividads, :proyecto_id, :integer
  end
end
