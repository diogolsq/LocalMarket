class Order < ApplicationRecord
  belongs_to :user
  validates :status, presence: true, length: { minimum: 5 }
end
