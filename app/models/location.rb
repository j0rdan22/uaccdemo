class Location < ApplicationRecord
  belongs_to :state
  has_many :departments, dependent: :destroy
end
