class User < ApplicationRecord

  validates :name, :username, :address, :cellphone, presence: true
  validate :username, :cellphone, uniqueness: true
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
