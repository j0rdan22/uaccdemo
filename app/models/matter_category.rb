class MatterCategory < ApplicationRecord
  has_many :matter_category_codes, dependent: :destroy
  has_many :category_codes, through: :matter_category_codes

end
