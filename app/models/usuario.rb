class Usuario < ApplicationRecord

  validates_presence_of :nombre
  validates_presence_of :contraseña



  has_and_belongs_to_many :junta
  has_and_belongs_to_many :proyectos
  has_and_belongs_to_many :actividads

  has_many :modificacions
  has_many :proyectos, through: :modificacions
end
