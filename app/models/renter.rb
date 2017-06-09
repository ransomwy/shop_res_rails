class Renter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :name, :address, :phone

  has_many :reservations, dependent: :destroy
  has_many :bikes, through: :reservations
end
