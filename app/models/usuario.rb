class Usuario < ApplicationRecord

  validates_presence_of :nombre
  validates_presence_of :contraseña
  validates_presence_of :permisos
  validates_presence_of :estado


  has_and_belongs_to_many :junta
  has_and_belongs_to_many :proyectos
  has_and_belongs_to_many :actividads

  has_many :modificacions
  has_many :proyectos, through: :modificacions
end
