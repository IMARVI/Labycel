class CreateJuntumUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :juntum_usuarios do |t|

      t.timestamps
    end
  end
end
