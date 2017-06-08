class Bike < ApplicationRecord
  validates_presence_of :bike_type, :bike_size, :pedal_type

  has_many :reservations, dependent: :destroy
  has_many :renters, through: :reservations
end
