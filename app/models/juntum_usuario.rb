class JuntumUsuario < ApplicationRecord
  belongs_to :usuario
  belongs_to :juntum
end
