class Surfboard < ApplicationRecord
  belongs_to :user

  validates :price, :size, presence: true
end
