class State < ApplicationRecord
  has_many :locations , dependent: :destroy
  has_many :parties, dependent: :destroy
  end
