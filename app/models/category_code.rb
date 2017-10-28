class CategoryCode < ApplicationRecord

  has_many :matter_category_codes, dependent: :destroy
  has_many :matter_categories, through: :matter_category_codes
end
