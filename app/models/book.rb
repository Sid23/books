class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true, length: {minimum: 2}
  validates :year, numericality: { only_integer: true }, presence: true
end