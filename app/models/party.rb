class Party < ApplicationRecord
  belongs_to :state
  belongs_to :party_type


  has_many :party_accounts, dependent: :destroy
  has_many :accounts, through: :party_accounts
end
