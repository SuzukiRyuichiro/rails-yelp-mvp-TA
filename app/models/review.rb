class Review < ApplicationRecord
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5).to_a }
  validates :content, presence: true

  belongs_to :restaurant
end
