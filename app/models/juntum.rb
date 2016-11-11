class Juntum < ApplicationRecord
  validates_presence_of :nombre
  validates_presence_of :descripcion

  has_many :juntum_usuario
  has_many :usuarios , through: :juntum_usuario
end
