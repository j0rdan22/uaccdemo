class PartyType < ApplicationRecord
  has_many :parties, dependent: :destroy
end
