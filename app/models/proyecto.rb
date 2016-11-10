class Proyecto < ApplicationRecord
  validates_presence_of :nombre

  has_and_belongs_to_many :usuarios

  has_many :modificacions
  has_many :usuarios, through: :modificacions
end
