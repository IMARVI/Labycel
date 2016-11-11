class JuntumUsuario < ActiveRecord::Base

  belongs_to :usuario
  belongs_to :juntum
end