class User < ApplicationRecord
  validates :name, :username, :address, :cellphone, presence: true
  validate :username, :cellphone, uniqueness: true
end
