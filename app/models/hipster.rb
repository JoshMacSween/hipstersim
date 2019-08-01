class Hipster < ApplicationRecord
  has_many :hats
  validates :name, presence: true
  validates :beer, presence: true
  validates :coffee, presence: true
  validates :quote, presence: true
end

