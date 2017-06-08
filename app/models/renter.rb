class Renter < ApplicationRecord
  validates_presence_of :name, :address, :phone

  has_many :reservations, dependent: :destroy
  has_many :bikes, through: :reservations
end
