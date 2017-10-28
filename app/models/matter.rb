class Matter < ApplicationRecord
  belongs_to :matter_type
  belongs_to :matter_status
  belongs_to :matter_source
  belongs_to :matter_category
  belongs_to :resolution_code
  belongs_to :urgency_level
  belongs_to :department
end
