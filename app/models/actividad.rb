class Actividad < ApplicationRecord
  validates_presence_of :nombre, :descripcion
  has_many :actividads_usuarios
  has_many :usuarios , through: :actividads_usuarios
end
