class Account < ApplicationRecord
  belongs_to :account_status

  has_many :party_accounts, dependent: :destroy
  has_many :parties, through: :party_accounts

end
