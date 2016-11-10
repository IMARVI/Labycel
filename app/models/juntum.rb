class Juntum < ApplicationRecord
  validates_presence_of :nombre
  validates_presence_of :descripcion
  has_and_belongs_to_many :usuarios
end
