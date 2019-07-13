class Hipster < ApplicationRecord
  validates :name, presence: true
  validates :beer, presence: true
  validates :coffee, presence: true, length: { minimum: 10, maximum: 50 }
  validates :quote, presence: true, length: { minimum: 10, maximum: 100 }
end
