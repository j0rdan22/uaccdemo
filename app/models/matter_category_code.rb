class MatterCategoryCode < ApplicationRecord
  belongs_to :category_code
  belongs_to :matter_category
end
