class Reservation < ApplicationRecord
  belongs_to :renter
  belongs_to :bike
end
