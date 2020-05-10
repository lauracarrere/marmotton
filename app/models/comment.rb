class Comment < ApplicationRecord
  belongs_to :recipe
  validates :content, length: { minimum: 5 }, presence: true
end
