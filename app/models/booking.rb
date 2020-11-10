class Booking < ApplicationRecord
  belongs_to :user, :surfboard

  validates :date_from, :date_to, :surfboard, presence: true
end
