class ActividadsUsuario < ActiveRecord::Base

  belongs_to :usuario
  belongs_to :actividad
end