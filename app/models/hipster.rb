# frozen_string_literal: true

class Hipster < ApplicationRecord
  has_many :things
  accepts_nested_attributes_for :things
  validates :name, presence: true
  validates :beer, presence: true
  validates :coffee, presence: true
  validates :quote, presence: true
end
