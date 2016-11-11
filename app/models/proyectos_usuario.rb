class ProyectosUsuario < ActiveRecord::Base

  belongs_to :usuario
  belongs_to :proyecto
end