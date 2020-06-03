class OrdersToProducts < ApplicationRecord
  belongs_to :product
  belongs_to :order
  validates :quantity, :unit_price, presence: true

end
