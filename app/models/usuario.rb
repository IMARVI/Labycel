class Usuario < ApplicationRecord
  before_destroy
  validates_presence_of :nombre
  validates_presence_of :contraseña

  has_many :juntum_usuarios
  has_many :junta, through: :juntum_usuarios, dependent: :destroy

  has_many :usuario_proyectos
  has_many :proyectos, through: :usuario_proyectos, dependent: :destroy

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
