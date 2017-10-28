class AccountStatus < ApplicationRecord

  has_many :accounts, dependent: :destroy
end
