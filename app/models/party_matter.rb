class PartyMatter < ApplicationRecord
  belongs_to :matter
  belongs_to :party
end
