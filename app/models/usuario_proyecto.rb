class UsuarioProyecto < ApplicationRecord
  validates_presence_of :usuario_id
  validates_presence_of :proyecto_id
  belongs_to :usuario
  belongs_to :proyecto
end
