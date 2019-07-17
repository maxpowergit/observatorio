class Inscripcion < ApplicationRecord
  has_many :oferta_en_listas
  has_many :catedras, through: :oferta_en_listas

  validates :ano, presence: true
  validates :cuatrimestre, presence: true, uniqueness: { scope: :ano }
end
