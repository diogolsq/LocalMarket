class Product < ApplicationRecord

  include PgSearch::Model


  belongs_to :user

  has_many :orders, through: :ordersToProduct
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :stock, presence: true, numericality: { only_integer: true }

  has_one_attached :photo


  # multisearchable against: [:title, :syllabus]

  # pg_search_scope :search_by_name_and_description,
  #   against: [:name, :description],
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  pg_search_scope :global_search,
      against: [:name, :description],
      associated_against: {
        user: [:name, :username, :address]
      },
      using: {
        tsearch: { prefix: true }
      }

end
