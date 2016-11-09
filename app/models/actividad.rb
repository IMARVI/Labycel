class Actividad < ApplicationRecord
  validates_presence_of :nombre, :descripcion
  has_and_belongs_to_many :usuarios
end
