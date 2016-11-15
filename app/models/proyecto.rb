class Proyecto < ApplicationRecord
  validates_presence_of :nombre

  has_many :usuario_proyectos
  has_many :usuarios, through: :usuario_proyectos

end
