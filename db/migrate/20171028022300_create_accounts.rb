class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.string :first_name
      t.string :last_name
      t.string :ssn
      t.references :account_status, foreign_key: true

      t.timestamps
    end
  end
end
