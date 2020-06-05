class Order < ApplicationRecord
  belongs_to :user
  validates :status, presence: true
  has_many :orders_to_products, dependent: :destroy
end
