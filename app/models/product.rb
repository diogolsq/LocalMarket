class Product < ApplicationRecord
  belongs_to :user

  has_many :orders, through: :ordersToProduct
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :stock, presence: true, numericality: { only_integer: true }

  has_one_attached :photo
end

