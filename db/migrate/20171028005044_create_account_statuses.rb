class CreateAccountStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :account_statuses do |t|
      t.string :status_description

      t.timestamps
    end
  end
end
