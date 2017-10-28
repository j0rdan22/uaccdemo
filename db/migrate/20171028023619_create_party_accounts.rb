class CreatePartyAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :party_accounts do |t|
      t.references :party, foreign_key: true
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
