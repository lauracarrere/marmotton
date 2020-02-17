class Recipe < ApplicationRecord
  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantities
  belongs_to :user
  validates :name, presence: true
  validates :time, presence: true
  validates :difficulty, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
