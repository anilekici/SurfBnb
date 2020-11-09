class Surfboard < ApplicationRecord
  belongs_to :user

  validates :model, :price, :size, presence: true
end
