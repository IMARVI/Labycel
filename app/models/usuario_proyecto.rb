class UsuarioProyecto < ApplicationRecord

  belongs_to :usuario
  belongs_to :proyecto
end
