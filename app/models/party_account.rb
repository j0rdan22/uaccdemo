class PartyAccount < ApplicationRecord
  belongs_to :party
  belongs_to :account
end
