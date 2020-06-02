class Product < ApplicationRecord
  has_many :order, through: :ordersToProduct
  has_many :review, dependent: :destroy
  validates :description, presence: true
  validates :stock, presence: true, numericality: { only_integer: true }
end

