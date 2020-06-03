class User < ApplicationRecord

  validates :name, :username, :password, :address, :cellphone, presence: true
  validates :username, :cellphone, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  # we will let the geocode access our address and convert it to latitude and longitude.
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
