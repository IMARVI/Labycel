class Juntum < ApplicationRecord
  validates_presence_of :nombre
  validates_presence_of :descripcion

  has_many :juntum_usuarios
  has_many :usuarios , through: :juntum_usuarios, dependent: :destroy
end