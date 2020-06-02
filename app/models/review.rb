class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :description, length: { maximum: 200 }
  validates :rating, presence: true, acceptance: { accept: (1..5) }
end
