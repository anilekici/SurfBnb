class Surfboard < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :model, :price, :size, presence: true
end
