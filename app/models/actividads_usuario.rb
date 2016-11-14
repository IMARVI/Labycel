class ActividadsUsuario < ActiveRecord::Base

  belongs_to :usuario
  belongs_to :actividad

  def agregarActividad (usuario_id, actividad_id)
    ActividadsUsuario.create(:usuario_id => usuario_id, :actividad_id => actividad_id )
  end
end