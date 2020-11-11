class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :surfboard

  validates :date_from, :date_to, :surfboard, presence: true
end
