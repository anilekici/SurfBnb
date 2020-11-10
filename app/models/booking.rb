class Booking < ApplicationRecord
  belongs_to :user, :surfboard

  validates :date_from, :date_to, presence: true

  validates
end
