# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_accessor :name, :email
  has_many :hipsters
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
