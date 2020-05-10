class Recipe < ApplicationRecord
  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantities
  has_many :comments
  belongs_to :user
  validates :name, presence: true
  validates :time, presence: true
  validates :difficulty, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_multiple,
    against: [:name, :description],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
