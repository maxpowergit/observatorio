class Curso < ApplicationRecord
  belongs_to :oferta_en_lista
  belongs_to :docente
  has_many :vacantes
end
