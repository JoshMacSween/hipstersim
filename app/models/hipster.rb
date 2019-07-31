class Hipster < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :beer, presence: true
  validates :coffee, presence: true
  validates :quote, presence: true

  def name
  end

  def beer
  end

  def coffee
  end

  def quote
  end

end

