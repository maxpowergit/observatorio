class Materia < ApplicationRecord
  belongs_to :carrera
  has_many :catedras

  validates :nombre, presence: true, uniqueness: { scope: :carrera }

  def display_name
    self.nombre
  end

end
