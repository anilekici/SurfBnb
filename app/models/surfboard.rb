class Surfboard < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  has_many :bookings

  validates :model, :price, :size, presence: true
end
