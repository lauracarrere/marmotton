class Ingredient < ApplicationRecord
  has_many :quantities
  validates :name, presence: true, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_multiple,
    against: :name,
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
