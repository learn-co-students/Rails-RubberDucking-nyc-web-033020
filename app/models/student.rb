class Student < ApplicationRecord
  has_many :ducks

  validates :name, presence: true
  validates :mod, presence: true
end
