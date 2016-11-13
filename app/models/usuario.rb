class Usuario < ApplicationRecord

  validates_presence_of :nombre
  validates_presence_of :contraseña

  has_many :juntum_usuarios
  has_many :junta, through: :juntum_usuarios

  has_many :proyectos_usuarios
  has_many :proyectos, through: :proyectos_usuarios

  has_many :actividads_usuarios
  has_many :actividads, through: :actividads_usuarios

  has_many :modificacions

  def self.find_by_nombre(nombre)
   nombre = where(nombre: nombre)
   if nombre.present?
     return nombre
   end
  end


 # has_many :proyectos, through: :modificacions

end
